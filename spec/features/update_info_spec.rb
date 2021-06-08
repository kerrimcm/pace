require 'rails_helper'

feature "Edit button" do
  scenario "User can see an edit button" do
    visit "/"
    click_link "Login"
    click_link "Sign up"
    fill_in "Email", with: "test@test.com"
    fill_in "Password", with: "123456"
    fill_in "Password confirmation", with: "123456"
    click_button "Sign up"
    click_button "Show"
    click_link "Edit"
    fill_in "Email", with: "test1@test.com"
    fill_in "Current password", with: "123456"
    click_button "Update"
    expect(page).to have_content "Your account has been updated successfully."
  end
end 