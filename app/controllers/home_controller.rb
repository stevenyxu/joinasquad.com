class HomeController < ApplicationController
  include Devise::Controllers::InternalHelpers

  def index
    resource = build_resource
  end
end
