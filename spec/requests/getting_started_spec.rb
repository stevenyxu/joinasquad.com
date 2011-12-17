require 'spec_helper'

describe 'a user visiting the homepage for the first time' do
  it 'can register and sign in' do
    visit '/'
    page.should have_content('Email')
    page.should have_content('Password')
    within('#join') do
      page.should have_content('Join')
      fill_in 'Email', :with => 'user@example.com'
      fill_in 'Password', :with => 'password'
      fill_in 'Password confirmation', :with => 'password'
    end
    click_link 'Join'
  end
end
