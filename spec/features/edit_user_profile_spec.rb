require 'rails_helper'

feature "Edit button" do
  scenario "User can see an edit button" do
    visit "/"
    click_link "Sign up"
    fill_in "Email", with: "test@test.com"
    fill_in "Password", with: "123456"
    fill_in "Password confirmation", with: "123456"
    click_button "Sign up"
    click_button "Show"
    expect(page).to have_content "test@test.com"
    expect(page).to have_link "Edit"
  end

  scenario "Other users cannot see edit button on other profiles" do
    visit "/"
    click_link "Sign up"
    fill_in "Email", with: "test@test.com"
    fill_in "Password", with: "123456"
    fill_in "Password confirmation", with: "123456"
    click_button "Sign up"
    click_link "Logout"
    click_link "Sign up"
    fill_in "Email", with: "test2@test.com"
    fill_in "Password", with: "123456"
    fill_in "Password confirmation", with: "123456"
    click_button "Sign up"
    find(:xpath, "/html/body/div[2]/div/div[1]/form/input[1]").click
    expect(page).not_to have_link "Edit"
  end
end 



