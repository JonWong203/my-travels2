class SessionsController < ApplicationController 
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user
      if @user.password == params[:password_hash]
      session[:user_id] = @user.id
      redirect_to @user
      else
        render :'sessions/new'
      end
  else
    render :'sessions/new'
    end
    end

  
  def destroy
    reset_session
    redirect_to '/login'
  end 
end