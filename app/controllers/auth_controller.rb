class AuthController < ApplicationController
    skip_before_action :authorized, only: [:login]

    def login
        user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
        payload = {user_id: user.id}
        token = encode_token(payload)
        render json: {user: user, token: token, success: 'Welcome back, #{user.first_name}'}
    else
        render json: {error: "Invalid username or password"}
        end
    end

    private

    def user_params
        params.permit(:first_name, :email, :password)
    end
end
