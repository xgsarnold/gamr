class SessionController < ApplicationController
  def login
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      if user.generate_token
        redirect_to dashboard_path
        notice: "Login successful"
      else
        notice: "Login unsuccesful. Please contact an administrator."
    else
      notice: "Wrong email or password."
  end

  def logout
    token = SessionToken.find_by_token(params[:token])
    if token.destroy
      notice: "Log out successful."
    else
      notice: "Log out unsuccesful."
  end
end
