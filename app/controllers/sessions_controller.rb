class SessionsController < ApplicationController
  def new
  end
  
  def create
    email = params[:email]
    password = params[:password]
    
    user = User.find_by email:email, password:password
    if user.nil?
      flash.now.alert = "invalid E-Mail or invalid Passwort"
      render "new"
    else
      session[:user_id] = user.id
      redirect_to root_url, :notice => "Logged in!"
    end
  end
  
  def destroy
     session[:user_id] = nil
     redirect_to root_url, :notice => "Logged out!"
  end
end
