class SessionsController < ApplicationController
  def new
    @user = User.new
    # TODO: create login form for view
    render :new
  end

  # TODO: create `create` action that logs-in the user and redirects somewhere
    # before you login a user, check to see email & password match with `User.confirm(_, _)` method
  
  def destroy
    # TODO: logout the user and redirect home
  end
end
