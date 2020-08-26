class UsersController < ApplicationController

  def new 
    @user = User.new 
  end  

  def create 
    @user = User.new(user_params) 
    if @user.save 
      redirect_to new_session_path 
    else 
      render :new 
    end 
  end

  private
  def user_params 
    params.require(:user).permit(:name, :email, :password, :password_digest, :password_confirmation) 
  end  

  # def find_user 
  #   @user = User.find(params[:id]) 
  # end
end
