class UsersController < ResourcesController
  def show
    @user = User.find params[:id]
    authorize! :read, @user
  end
end
