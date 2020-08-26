class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
  end

  def destroy
    session.delete(:user_id)
    redirect_to new_session_path
  end
end
