require 'rails_helper'

feature "Home page" do
  scenario "Users can see all other users and their info on the home page" do
    sign_up_jane
    expect(page).to have_content "Welcome! You have signed up successfully."
    expect(page).to have_content "Jane"
  end
end
