class SessionsController < ApplicationController
  def new
    @user = User.new
    # TODO: create login form for view
    render :new
  end

  # TODO: create `create` action that logs-in the user and redirects somewhere
    # before you login a user, check to see email & password match with `User.confirm(_, _)` method
  
  def create
    session_params = params.permit(:email, :password)
    @user = User.confirm(session_params)
    if @user
      login(@user)
      redirect_to "/users/#{@user.id}"

    else
      redirect_to "/signin"
        
    end
  end      

    
      # flash.now[:error] = "Something went wrong! Invalid email/password combination"
   


  def destroy
    # TODO: logout the user and redirect home
  end
end
