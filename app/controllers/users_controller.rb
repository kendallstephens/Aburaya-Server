class UsersController < ApplicationController

    def index 
        users = User.all
        render json: users
    end


    def create
        user = User.create(user_params)
    if user.valid?
        payload = {user_id: user.id}
        token = encode_token(payload)
        render json: {user: user, token: token}
    else
        render json: {error: "Invalid username or password"}, status: :not_acceptable
    end
  end

    def auto_login
        render json: user
     end

    def show
        user = User.find(params[:id])
        render json: user
     end 


    private

    def user_params
        params.permit(:first_name, :last_name, :phone_number, :email, :password)
    end 
end



