require 'rails_helper'

feature "Edit button" do
  scenario "User can see an edit button" do
    sign_up_jane
    click_button "Show"
    expect(page).to have_content "jdoe@email.com"
    expect(page).to have_link "Edit"
  end

  scenario "Other users cannot see edit button on other profiles" do
    sign_up_jane
    click_link "Logout"
    sign_up_mark
    find(:xpath, "/html/body/form[1]/input[1]").click
    expect(page).not_to have_link "Edit"
  end
end 



