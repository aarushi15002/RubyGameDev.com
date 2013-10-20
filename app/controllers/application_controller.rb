class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :find_user_or_create_guest

  def find_user_or_create_guest
    if session[:user_id]
      @user = User.find(session[:user_id])
    else
      @user = User.create(guest: true)
      session[:user_id] = @user.id
    end
  end

  def current_user
    @user
  end
  
end
