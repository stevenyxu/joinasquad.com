require 'spec_helper'

describe 'User access' do
  describe 'someone not signed in' do
    it 'can view a user profile' do
      user = Factory(:user)
      visit "/users/#{user.id}"
      page.should show_profile(user)
    end

    # removed since we are not allowing profile views if not signed in
    # -----
    # it 'can sign in and be redirected back to the profile' do
    #   me, him = Factory(:user), Factory(:user)
    #   visit "/users/#{him.id}" # should redirect to login page

    #   fill_in 'Email', :with => me.email
    #   fill_in 'Password', :with => me.password
    #   click_on 'Login' # should redirect you back to originally accessed page

    #   page.should have_content(him.email)
    #   page.should_not have_content('Edit')
    # end
  end
end
