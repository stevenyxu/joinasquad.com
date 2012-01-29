require 'spec_helper'

describe 'Creating games' do
  describe 'a logged in admin user' do
    before { @admin = log_in! Factory(:admin) }

    describe 'visiting the games page' do
      before do
        visit '/'
        click_on 'Games'
      end

      it 'should see a link to add a game' do
        page.should have_content('Add game')
      end
    end
  end

  describe 'a logged in normal user' do
    before { @user = log_in! Factory(:user) }

    describe 'visiting the games page' do
      before do
        visit '/'
        click_on 'Games'
      end

      it 'should not see a link to add a game' do
        page.should_not have_content('Add game')
      end
    end
  end
end
