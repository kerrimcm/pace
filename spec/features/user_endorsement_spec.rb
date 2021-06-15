require 'spec_helper'

feature 'User endorsements' do
  scenario 'a user can endorse another user' do
    sign_up_jane
    click_link "Logout"
    sign_up_mark

    click_button "View Jane's Profile"

    fill_in "endorsement[body]", with: "I loved running with Jane"
    click_button "👍"

    expect(page).to have_content "Jane"
    expect(page).to have_content "Message this user"
    expect(page).to have_content "I loved running with Jane"
    expect(page).to have_content "👍 1"
  end
end