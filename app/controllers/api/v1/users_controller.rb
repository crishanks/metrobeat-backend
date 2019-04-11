class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    @user = User.create(user_params)
  end

  def update
    @user = User.find_by(id: params[:id])
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:id, :name, :email, :image, :country, :birthdate)
  end
end
