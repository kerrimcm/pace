require 'rails_helper'

feature "Home page" do
  scenario "Users can see all other users and their info on the home page" do
    visit "/"
    click_link "Login"
    click_link "Sign up"
    fill_in "Email", with: "test@test.com"
    fill_in "Password", with: "123456"
    fill_in "Password confirmation", with: "123456"
    click_button "Sign up"
    expect(page).to have_content "Welcome! You have signed up successfully."
  end
end 