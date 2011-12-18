require 'spec_helper'

describe 'someone not signed in' do
  it 'cannot view a user profile' do
    user = User.create!(:email => 'papa@smurf.com', :password => 'password')
    visit "/users/#{user.id}"
    page.should have_content('You need to sign in')
  end

  it 'can sign in and be redirected back to the profile' do
    me = User.create!(:email => 'user@example.com', :password => 'password')
    him = User.create!(:email => 'papa@smurf.com', :password => 'password')
    visit "/users/#{him.id}"
    fill_in 'Email', :with => me.email
    fill_in 'Password', :with => me.password
    click_on 'Login'
    page.should have_content(him.email)
  end
end
