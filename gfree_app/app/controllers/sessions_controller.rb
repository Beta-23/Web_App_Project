class SessionsController < ApplicationController
  def new
    @user = User.new
    # create login form for view
    render :new
  end

    #TODO: before you login a user, check to see email & password match with `User.confirm(_, _)` method
  
  def create
    session_params = params.permit(:email, :password)
    user = User.confirm(session_params)
    if user
      login(user)
      redirect_to current_user

    else
      flash.now[:error] = "Something went wrong! Invalid email/password combination"
      redirect_to signin_path 
    end
  end      

    
   def destroy
    logout
    redirect_to root_path
    # logout the user and redirect home
  end
end
