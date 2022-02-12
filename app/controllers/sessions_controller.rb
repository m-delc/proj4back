class SessionsController < ApplicationController

    def login
        user = User.find_by(name: params[:username])
        if user&.authenticate(params[:password])
            session[:current_user] = user.id
            return render json: {message: "Welcome, #{user.username}!"}, status: 200
        else
            return render json: {error: "Invalid Password and/or Username"}, status: 401
        end
    end

end
