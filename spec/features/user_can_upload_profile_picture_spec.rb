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
                File.join(Rails.root, '/spec/fixtures/default.jpg'), :visible => false)
    # click_on('btn-upload-img')


    click_button "Sign up"
    save_and_open_page
    expect(page).to have_content "Welcome! You have signed up successfully."
  end
end

#
# describe 'Images', type: :feature do
#   before(:each) do
#     @user = create(:user)
#     visit '/users/sign_in'
#     fill_in 'sing-in-email-input', with: @user.email
#     fill_in 'sign-in-password-input', with: @user.password
#     click_button 'btn-sign-in'
#     visit '/categories'
#     click_on 'btn-new-category'
#     expect(current_path) == new_category_path
#     fill_in 'category_name', with: 'Test'
#     click_button 'btn-create category'
#     visit '/categories'
#     first('.fa', :visible => false).click
#     expect(current_path) == category_path(id: Category.last.slug.to_s)
#   end
#   it 'should allow a registered user to create image and go to it page', js: true do
#     click_on 'btn-upload-images'
#     expect(current_path) == new_image_path(id: Category.last.slug.to_s)
#     attach_file('image[image]',
#                 File.join(Rails.root, '/spec/fixtures/solnce-kosmos-merkuriy.jpg'), :visible => false)
#     click_on('btn-upload-img')
#   end
# end
