class UsersController < ResourcesController
  before_filter :authenticate_user!, :only => :index
  before_filter :redirect_if_not_user_manager, :only => :index

  respond_to :html

  def index
    authorize! :read, User
    @users = User.all
  end

  def show
    @user = User.find params[:id]
    authorize! :read, @user
  end

  def edit
    @user = User.find params[:id]
    authorize! :manage, @user
  end

  def update
    @user = User.find params[:id]
    authorize! :manage, @user
    if @user.update_attributes(params[:user])
      flash[:notice] = 'User profile updated successfully.'
    end
    respond_with(@user, :location => @user)
  end

  protected

  def redirect_if_not_user_manager
    redirect_to current_user unless can?(:manage, User)
  end
end
