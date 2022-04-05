class UsersController < ActionController::Base
  include Pundit
  def index
    @users = User.all
    render json: @users
  end
  def show
    @user = User.find(params[:id])
    render json: @user
  end


    def create
      @user = User.new(user_params)
      @user.save
      render json: @user
    end

  def destroy
    @user = User.find(params[:id])
    if @user.delete
      flash[:notice] = 'user deleted!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to delete this user!'
      render :destroy
    end
  end
end

def update
  @user = User.find(params[:id])
  if @user.update_attributes(user_params)
    flash[:notice] = 'user updated!'
    redirect_to root_path
  else
    flash[:error] = 'Failed to edit user!'
    render :edit
  end
end

def user_params
      params.require(:user).permit(:user_name, :password, :telephone_number, :birth_date, :gender, :first_name, :last_name)
    end

  def pundit_user
    AuthorizationContext.new(current_user, current_organization)
  end
