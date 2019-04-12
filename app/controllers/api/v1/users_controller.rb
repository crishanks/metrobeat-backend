require 'rest_client'

class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def create
    # Request refresh and access tokens
    body = {
      grant_type: "authorization_code",
      code: params[:code], #what is this?
      redirect_uri: 'http://localhost:3000/api/v1/user',
      client_id: Rails.application.credentials[Rails.env.to_sym][:spotify][:client_id],
      client_secret: Rails.application.credentials[Rails.env.to_sym][:spotify][:client_secret]
    }

    auth_response = RestClient.post('https://accounts.spotify.com/api/token', body)
    auth_params = JSON.parse(auth_response.body)
    header = {
      Authorization: "Bearer #{auth_params["access_token"]}"
    }

    user_response = RestClient.get("https://api.spotify.com/v1/me", header)
    user_params = JSON.parse(user_response.body)
    
    #Create User
    @user = User.find_or_create_by(name: user_params["display_name"], email: nil, image: user_params["images"][0]["url"], country: user_params["country"], birthdate: nil)

    #Redirect to Front End app homepage
    redirect_to "http://localhost:3001/"
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
