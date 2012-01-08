require 'spec_helper'

describe 'Browsing games' do
  describe 'someone not signed in' do
    it 'can see a link to games on the homepage and click it' do
      visit '/'
      click_link 'Games'
    end
  end
end
