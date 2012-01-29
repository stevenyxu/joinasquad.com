require 'spec_helper'

describe User do
  it 'should be able to be associated with a game' do
    Factory(:user).games << Factory(:game)
  end

  it 'should have a valid factory that does not produce an admin' do
    user = Factory.build(:user)
    user.should be_valid
    user.admin?.should == false
  end

  describe 'in association with a game' do
    before do
      (@user = Factory(:user)).games << (@game = Factory(:game))
    end

    it 'should allow retrieval of the games on a user' do
      @user.games.should == [@game]
    end

    it 'should allow the attachment of another game' do
      game_two = Factory(:game)
      @user.games << game_two
      @user.games.should == [@game, game_two]
    end
  end

  describe 'an admin' do
    it 'should have a valid factory that produces an admin' do
      user = Factory.build(:admin)
      user.should be_valid
      user.admin?.should == true
    end
  end
end
