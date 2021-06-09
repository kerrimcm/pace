require 'spec_helper'

feature 'profile picture' do

  scenario 'at signup, user can upload an image' do
    visit "/"
    click_link "Sign up"
    fill_in "First name", with: "Jane"
    fill_in "Postcode", with: "SW1"
    fill_in "Date of birth", with: "2021-06-01"
    select('Female', from: 'Gender')
    select('Couch', from: 'Running ability')
    select('Speed', from: 'Fitness Goals')
    fill_in "Email", with: "jdoe@email.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    attach_file('user[profile_pic]',
                File.join(Rails.root, '/spec/fixtures/miss_piggy.jpg'), :visible => false)
    # click_on('btn-upload-img')
    click_button "Sign up"
    # save_and_open_page
    expect(page).to have_content "Welcome! You have signed up successfully."
    expect(page).to have_xpath("//img[contains(@src,'miss_piggy.jpg')]")
  end
end
