import { editSwitch } from "../components/edit_switch"
import { copyWithClick } from "../components/copy_with_click"
import { unsavedAlert, unsavedImageAlert, rtaUnsavedAlert, unsavedRadioAlert } from "../components/unsaved_alert"
import { invitedLogin } from "../components/invited_login"
import { leaveTlk } from "../components/leave_tlk"
import { trixEditorOverrides } from "../components/trix-editor-overrides"
import { loadDraftMsg } from "../components/load_draft_msg"
import { multiDraft } from "../components/multi_draft"
import { uploadImage } from "../components/upload_image"
import { changeBrToDiv } from "../components/trix_change_br_to_div"
import { indexInfoPivot } from "../components/index_info_pivot"
import { detailsToggle } from "../components/details_toggle"
import { userEditSwitch } from "../components/user_edit_switch"
import { loadEditMsg } from "../components/load_edit_msg"
import { toggleColorSpace } from "../components/toggle_colors"
import { autoTweet } from "../components/auto_tweet"

let mode = document.querySelector('#meta').content

if(mode == 'tlks-show-edit') {
  editSwitch();
  copyWithClick();
  unsavedAlert();
  leaveTlk();
  unsavedImageAlert();
  rtaUnsavedAlert();
  trixEditorOverrides();
  loadDraftMsg();
  multiDraft();
  uploadImage();
  changeBrToDiv();
  unsavedRadioAlert();
  toggleColorSpace();
  autoTweet();
}

if(mode == 'tlks-show-invited') {
  invitedLogin();
}

if(mode == 'tlks-show-spkr') {
  editSwitch();
  unsavedAlert();
  rtaUnsavedAlert();
  leaveTlk();
  unsavedImageAlert();
  trixEditorOverrides();
  loadDraftMsg();
  multiDraft();
  changeBrToDiv();
  uploadImage();
  unsavedRadioAlert();
  toggleColorSpace();
  autoTweet();
}

if(mode == 'users-edit') {
  // uploadImage();
}

if(mode == 'tlks-index') {
  indexInfoPivot();
}

if(mode == 'tlks-new') {
  unsavedImageAlert();
  unsavedAlert();
  rtaUnsavedAlert();
  uploadImage();
  detailsToggle();
}

if (mode == 'users-show-edit') {
  userEditSwitch();
  uploadImage();
}

if (mode == 'msgs-edit-edit') {
  changeBrToDiv();
  loadEditMsg();
  trixEditorOverrides();
}
