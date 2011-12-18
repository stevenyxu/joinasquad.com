require 'spec_helper'

describe 'the website' do
  it 'serves up the homepage' do
    visit '/'
    page.should have_content('joinasquad.com')
  end
end
