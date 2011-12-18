require 'spec_helper'

describe 'a user visiting the homepage for the first time' do
  it 'can register and sign in' do
    visit '/'
    page.should have_content('Welcome')
    within('#join') do
      fill_in 'Email', :with => 'user@example.com'
      fill_in 'Password', :with => 'password'
      click_on 'Create a new account'
    end
    page.should have_content('Getting started')
  end
end
