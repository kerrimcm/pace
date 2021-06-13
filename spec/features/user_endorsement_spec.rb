require 'spec_helper'

feature 'User endorsements' do
  scenario 'a user can endorse another user' do
    sign_up_jane
    click_link "Logout"
    sign_up_mark

    click_button "View Jane's Profile"
    expect(page).to have_content "Endorse this user"
  end
end