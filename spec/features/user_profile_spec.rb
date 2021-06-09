require 'rails_helper'

feature "Profile page show" do
  scenario "Users can view other users profiles" do
    sign_up_jane
    click_button "Show"
    expect(page).to have_content "jdoe@email.com"
  end
end 