class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def create
        # byebug
        user = User.create!(user_params)
        if user.valid?
            return render json: user, status: 201
        else
            return render json: { error: "User not created" }, status: 404
        end
        rescue ActiveRecord::RecordInvalid => e
            return render json: { errors: e.record.errors.full_messages }, status: 422
    end

    private

    def user_params
        params.permit(:name, :username, :password, :password_confirmation)
    end

end