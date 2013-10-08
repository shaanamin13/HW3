class UsersController < ApplicationController

  
  def new
    # default: render 'new' template
  end

  def create

    @user = User.create!(params[:user])
    flash[:notice] = "welcome #{@user}. Your account has been created."
    redirect_to movies_path
  end

  

end
