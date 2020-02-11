class TlksController < ApplicationController
  require 'digest/md5'
  include SpkrMaker

  skip_before_action :authenticate_user!, only: [:index, :show, :new]

  def index
    @tlks = Tlk.includes(:spkrs).paginate(page: params[:page], per_page: 30).order(updated_at: :desc)
  end

  def newly_created
    @tlks = Tlk.includes(:spkrs).paginate(page: params[:page], per_page: 30).order(created_at: :desc)
  end

  def show
    @tlk = Tlk.includes(:spkrs, :msgs).friendly.find(params[:id])
    @user_spkrs = Spkr.where(tlk: @tlk, user: current_user)
    @msg = Msg.new()
    new_spkr_on_invite
    user_is_spkr_only? if current_user.present?
  end

  def new
    @tlk = Tlk.new()
    @tlk_with_me_users = User.joins(:rich_text_tlk_with_me).paginate(page: params[:page], per_page: 30).order(created_at: :desc)
  end

  def edit
    @tlk = Tlk.includes(:spkrs, :msgs).friendly.find(params[:id])
  end

  def create
    # If making changes, this method also exists in TlkRequestsController
    @tlk = Tlk.new(tlk_params)
    @tlk.user = current_user
    @tlk.invite_code = '%010d' % rand(100000..999999)
    @tlk.msg_key = Digest::MD5.hexdigest(@tlk.title)
    if @tlk.save!
      make_spkr
      send_user_followers_new_tlk_mail(current_user, @tlk)
      redirect_to show_tlk_path(@tlk), flash: { edit: true }
    end
  end

  def update
    @tlk = Tlk.includes(:spkrs, :msgs).friendly.find(params[:id])
    @tlk.update(tlk_params)
    respond_to do |format|
      format.js { render 'update', layout: false } # { @tlk }# <-- will render `app/views/reviews/create.js.erb`
      format.html { redirect_to new_tlk_path(@tlk) }
    end
  end

  private

  def tlk_params
    params.require(:tlk).permit(:title, :image)
  end

  def new_spkr_on_invite
    @spkr = Spkr.new() if flash[:invited]
  end

  def user_is_spkr_only?
    @tlk.spkrs.each do |spkr|
      @spkr_only = true if spkr.user == current_user && @tlk.user != current_user
    end
  end

  def send_user_followers_new_tlk_mail(current_user, tlk)
    current_user.followers.each do |follower|
      mail = TlkMailer.with(
        tlk: tlk, followed_user: current_user,
        follower: follower
      ).new_tlk_update_user_follower
      mail.deliver_later
    end
  end
end
