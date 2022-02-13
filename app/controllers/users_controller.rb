class UsersController < ApplicationController

    # what does this do
    # what does this do
    skip_before_action :authorize_user, only: [:create]

    def index
        users = User.all
        render json: users
    end

    def show
        if current_user
            render json: current_user, status: 200
        else
            render json: {error: "No current user set"}, status: 401
        end
    end

    def create
        user = User.create(user_params)
        if user.valid?
            return render json: {message: "User created successfully!"}, status: 201
        else
            return render json: { error: user.errors }, status: 404
        end
    end



    # ix
    # ix
    # ix
    # def create
    #     user = User.create!(user_params)
    #     session[:current_user] = user.id
    #     render json: user, status: :created
    # rescue ActiveRecord::RecordInvalid => invalid
    #     render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    # end 

    private

    def user_params
        params.permit(:name, :username, :password, :password_confirmation)
    end

end