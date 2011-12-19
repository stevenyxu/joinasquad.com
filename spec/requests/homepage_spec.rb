require 'spec_helper'

describe 'the website' do
  it 'serves up the homepage' do
    visit '/'
    page.should have_content('joinasquad.com')
  end

  it 'has a link to the homepage if logged in' do
    log_in!
    click_link 'Home'
  end
end
