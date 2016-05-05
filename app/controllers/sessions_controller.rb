class SessionsController < ApplicationController
  skip_before_action :authorize
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:user_name] = user.name
        redirect_to user, alert: "Użytkownik zalogowany"
    else
        redirect_to login_url, alert: "Niepoprawna kombinacja hasła/użytkownika"
    end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to login_url, alert: "Użytkownik wylogowany"
  end
end

