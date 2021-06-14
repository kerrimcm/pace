require 'rails_helper'


feature "Messages display unread message until read" do
  scenario "Sent messages show as unread messages until read" do

    sign_up_jane
    click_link "Logout"
    sign_up_mark

    click_button "View Jane's Profile"
    click_link "Message this user"
    fill_in "message[body]", with: "Hi Jane"
    click_button "Send message"
    expect(page).to have_content "unread Mark at"
    click_link "Logout"
    visit "/"
    click_link "Login"
    fill_in "Email", with: "jdoe@email.com"
    fill_in "Password", with: "password"
    click_button "Log in"
    click_link "View inbox"
    click_link "Mark"
    expect(page).to have_content "unread Mark at"
    click_link "View inbox"
    click_link "Mark"
    expect(page).not_to have_content "unread"
  end
end