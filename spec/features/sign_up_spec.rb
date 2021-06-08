require 'spec_helper'

feature 'Sign up' do

  scenario 'signs up the user' do
    visit "/"
    click_link "Sign up"
    fill_in "First name", with: "Jane"
    fill_in "Postcode", with: "SW1"
    fill_in "Date of birth", with: "2021-06-01"
    select('Female', from: 'Gender')
    fill_in "Running ability", with: "Basic"
    fill_in "Fitness Goals", with: "Intermediate"
    fill_in "Email", with: "jdoe@email.com"
    fill_in "Password", with: "password"
    fill_in "Password Confirmation", with: "password"
    click_button "Create Account"
    expect(page).to have_content "Welcome! You have signed up successfully."
  end
end
