class UsersController < ApplicationController
  def new
    @user = User.new
    @title = "Sign up"
  end
 
  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the member page!"
      redirect_to @user# Handle a successful save.
    else
      @title = "Sign up"
      render 'new'
    end
  end


  def show
    @user = User.find(params[:id])
  end

end
