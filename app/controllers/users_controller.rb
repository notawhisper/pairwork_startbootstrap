class UsersController < ApplicationController
  def new 
    @user = User.new 
  end

  def create
    user = params[:user].permit(:name, :email, :password, :password_digest, :password_confirmation)
    User.create(user)
  end

  private
  # def user_params
  #   params.require(:user).permit(:name, :email, :password, :password_digest, :password_confirmation)
  # end
end
