require 'rails_helper'


feature "Users can message each other" do
  scenario "Once a user is signed up they can send and receive messages" do

    #--------------------------------

    visit "/"
    click_link "Sign up"
    fill_in "First name", with: "Jane"
    fill_in "Postcode", with: "SW1"
    fill_in "Date of birth", with: "2021-06-01"
    select('Female', from: 'Gender')
    select('Couch', from: 'Running ability')
    select('Speed', from: 'Fitness Goals')
    attach_file('Profile picture', './spec/fixtures/miss_piggy.jpg')
    fill_in "Email", with: "jdoe@email.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"
    click_link "Logout"

    #-------------------------------

    visit "/"
    click_link "Sign up"
    fill_in "First name", with: "Mark"
    fill_in "Postcode", with: "SW2"
    fill_in "Date of birth", with: "2000-06-01"
    select('Male', from: 'Gender')
    select('Marathon', from: 'Running ability')
    select('Distance', from: 'Fitness Goals')
    attach_file('Profile picture', './spec/fixtures/miss_piggy.jpg')
    fill_in "Email", with: "mark@email.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"

    #---------------------------------

    click_button "View Jane's Profile"
    click_link "Message this user"
    fill_in "message[body]", with: "Hi Jane"
    click_button "Send message"
    click_link "Logout"
    visit "/"
    click_link "Login"
    fill_in "Email", with: "jdoe@email.com"
    fill_in "Password", with: "password"
    click_button "Log in"
    click_link "View inbox"
    click_link "Mark"
    expect(page).to have_content "Hi Jane"
  end
end