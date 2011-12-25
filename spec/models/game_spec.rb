require 'spec_helper'

describe Game do
  it 'should save and be retrievable by name' do
    game = Game.new(:name => 'Moons and Telescopes')
    game.should be_valid
    game.save!
    Game.where(:name => 'Moons and Telescopes').count.should == 1
  end

  it 'should have a working factory' do
    Factory(:game).should be_valid
  end

  describe 'in association to a user' do
    it 'should allow subscribing the user to the game through the relation' do
      @game = Factory(:game)
      @user = Factory(:user)
      @game.users << @user
    end

    it 'should allow access of susbcribed users' do
      @game = Factory(:game)
      @game.users << Factory(:user)
      @game.users.count.should == 1
    end
  end
end
