require 'spec_helper'

describe 'someone not signed in' do
  it 'cannot view a user profile' do
    user = Factory(:user)
    visit "/users/#{user.id}"
    page.should have_content('You need to sign in')
  end

  it 'can sign in and be redirected back to the profile' do
    me, him = Factory(:user), Factory(:user)
    visit "/users/#{him.id}" # should redirect to login page

    fill_in 'Email', :with => me.email
    fill_in 'Password', :with => me.password
    click_on 'Login' # should redirect you back to originally accessed page

    page.should have_content(him.email)
  end
end
