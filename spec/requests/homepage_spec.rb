require 'spec_helper'

describe 'the website' do
  it 'serves up the homepage' do
    get '/'
    response.should be_success
  end

  describe 'at /home' do
    it 'redirects to the root' do
      get '/home'
      response.should redirect_to('/')
    end
  end
end
