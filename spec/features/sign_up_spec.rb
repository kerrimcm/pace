require 'spec_helper'

feature 'Sign up' do

  scenario 'signs up the user' do
    sign_up_jane
    expect(page).to have_content "Welcome! You have signed up successfully."
  end
end
