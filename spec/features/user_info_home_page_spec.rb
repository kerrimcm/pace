require 'rails_helper'

feature "Home page user info spec" do
  scenario "User signs up and sees their info" do

    sign_up_jane

    expect(page).to have_content "Jane"
    expect(page).to have_content "SW1"
    expect(page).to have_content "Female"
    expect(page).to have_content "Couch"
    expect(page).to have_content "Speed"
  end
end 
