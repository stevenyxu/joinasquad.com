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

      describe 'clicking the add game link' do
        before { click_on 'Add game' }

        it 'should see a form to create a game' do
          page.should have_button('Create game')
        end

        describe 'filling out the form and submitting with valid input' do
          before do
            fill_in 'Name', :with => (@name = Faker::Lorem.words)
            click_on 'Create game'
          end

          it 'should show the newly created game with a success message' do
            page.should have_content(@name)
          end
        end

        describe 'filling out the form and submitting without specifying a name' do
          before do
            click_on 'Create game'
          end

          it 'should kick the user back to the form with an error' do
            page.should have_content('can\'t be blank')
            page.should have_button('Create game')
          end
        end
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
