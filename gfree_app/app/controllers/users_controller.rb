class UsersController < ApplicationController

  def index
    @users = User.all #this method grabs the all the users
    render :index
  end

  def new
    @user = User.new
    render :new
  end  

  def create
    user_params = params.require(:user).permit(:first_name, :last_name, :email, :type_allergy, :password)
    @user = User.create(user_params)
    redirect_to new_users_path
  end

  def show
    @user = User.find(params[:id])
    render :show
  end

end
