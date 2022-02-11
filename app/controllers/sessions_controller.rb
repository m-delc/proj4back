class SessionsController < ApplicationController

    def login
        user = User.find_by(name: params[:username])
        # byebug
        if user&.authenticate(params[:password])
            return render json: {message: "Welcome, #{user.username}!"}, status: 200
        else
            return render json: {error: "Invalid Password and/or Username"}, status: 404
        end
    end

end
