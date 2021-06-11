require 'rails_helper'

def sign_up_jane
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
end 

def sign_up_mark
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
end