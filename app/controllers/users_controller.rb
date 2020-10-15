class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end
  def create
    user = User.new(uid: params[:user][:uid], pass:
    params[:user][:pass])
    user.pass = BCrypt::Password.create(params[:user][:pass])
    user.save
    
    redirect_to '/' 
  end
  
  def destroy
   render plain: params[:id]
  end
end
