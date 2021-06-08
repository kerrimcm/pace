require 'rails_helper'

feature "Profile page show" do
  scenario "Users can view other users profiles" do
    visit "/"
    click_link "Login"
    click_link "Sign up"
    fill_in "Email", with: "test@test.com"
    fill_in "Password", with: "123456"
    fill_in "Password confirmation", with: "123456"
    click_button "Sign up"
    click_button "Show"
    expect(page).to have_content "test@test.com"
  end
end 