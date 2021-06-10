require 'rails_helper'

feature "Edit button" do
  scenario "User can see an edit button" do
    sign_up_jane
    click_button "View user"
    click_link "Edit"
    fill_in "Email", with: "test1@test.com"
    fill_in "Current password", with: "password"
    click_button "Update"
    expect(page).to have_content "Your account has been updated successfully."
  end
end
