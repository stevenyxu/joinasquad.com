require 'spec_helper'

describe 'a user visiting the homepage for the first time' do
  it 'can register and sign in' do
    visit '/'
    page.should have_content('Welcome')
    within('#join') do
      fill_in 'Email', :with => Faker::Internet.email
      fill_in 'Password', :with => 'password'
      click_on 'Create a new account'
    end
    page.should have_content('Getting started')
  end

  it 'can log out after registration and have the login tab prevalent' do
    visit '/'
    within('#join') do
      fill_in 'Email', :with => Faker::Internet.email
      fill_in 'Password', :with => 'password'
      click_on 'Create a new account'
    end
    click_link 'Logout'
    page.should have_content('Signed out successfully')
    find('.tabs li.active a').text.should == 'Login'
    find('.tab-content .active').should have_content('Remember me')
  end

  it 'can log in with the correct credentials' do
    log_in!
    page.should have_content('Signed in successfully')
  end
end
