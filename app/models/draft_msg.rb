class DraftMsg < ApplicationRecord
  belongs_to :user
  belongs_to :tlk
  belongs_to :spkr

  has_rich_text :content
  has_rich_text :safe_content
end
