class ResourcesController < ApplicationController
  check_authorization
  load_and_authorize_resource

  rescue_from CanCan::AccessDenied do |exception|
    if user_signed_in?
      redirect_to root_path, :alert => exception.message
    else
      warden.authenticate!(:scope => :user)
    end
  end

  respond_to :html

  def create
    resource.save
    respond_with resource
  end

  protected

  def resource
    instance_variable_get(instance_variable_name)
  end

  # This works mostly by accident and is hard to test. Fortunately, if it breaks
  # it will break damn near everything.
  def instance_variable_name
    "@#{self.class.name.sub("Controller", "").underscore.split('/').last.singularize}"
  end

end
