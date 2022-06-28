class UsersController < ApplicationController
  def index
  end

  def create
    user = User.new(user_params)
    user.save
  end
  def user_params
    params.require(:user).permit(:name, :phone_number, :email, :password)
  end
end
