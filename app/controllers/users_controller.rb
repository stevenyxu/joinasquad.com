class UsersController < ResourcesController
  respond_to :html
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
end
