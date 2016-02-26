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
    user_params = params.require(:user).permit(:first_name, :last_name, :email, :password)
    @user = User.create(user_params)
    
    allergies = params[:type_allergy].values
    # allergies = ["gluten", "peanut", "dairy"]
    allergies.each do |allergy|
      type_allergy = TypeAllergy.where(type_allergy: allergy).first
     
      user_allergy = TypeAllergyUser.create(user_id: @user.id, type_allergy_id: type_allergy.id)
    end
    redirect_to user_path(@user)
  end

  def show
    @user = User.find(params[:id])
    render :show
  end

  # def destroy
  #   current_user.destroy
  # end

end
