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
end
