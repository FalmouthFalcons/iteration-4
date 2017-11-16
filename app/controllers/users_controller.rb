class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create( user_params
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: 'Thank you for signing up!'
    else
      render :new
    end
  end

  private
  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :product_image
  end
end
