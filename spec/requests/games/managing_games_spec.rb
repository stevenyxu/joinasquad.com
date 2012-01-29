require 'spec_helper'

describe 'Managing games' do
  describe 'An admin' do
    before { @admin = log_in! Factory(:admin) }

    describe 'visiting a game page' do
      before do
        @game = Factory(:game)
        visit game_path(@game)
      end

      it 'should see a link to delete the game' do
        page.should have_link('Delete game')
      end

      describe 'clicking the delete game link' do
        before do
          click_link 'Delete game'
        end

        it 'should take the user back to the games page with a success message' do
          page.should have_content('Games')
          page.should_not have_content(@game.name)
          page.should have_content('Successfully deleted.')
        end
      end
    end
  end

  describe 'A user' do
    before { @user = log_in! }
  end
end
