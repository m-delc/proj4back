class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def show
        # byebug
    end

    def create
        user = User.create(user_params)
        if user.valid?
            return render json: user, status: 201
        else
            return render json: { error: user.errors }, status: 404
        end
    end

    private

    def user_params
        params.permit(:name, :username, :password, :password_confirmation)
    end

end