class ResourcesController < ApplicationController
  check_authorization

  rescue_from CanCan::AccessDenied do |exception|
    if user_signed_in?
      redirect_to root_path, :alert => exception.message
    else
      warden.authenticate!(:scope => :user)
    end
  end

  respond_to :html

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
