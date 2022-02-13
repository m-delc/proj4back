class SessionsController < ApplicationController

    skip_before_action :authorize_user, only: [:login]

    # michael
    # michael
    # michael
    # michael
    # michael
    # def login
    #     user = User.find_by(name: params[:username])
    #     if user&.authenticate(params[:password])
    #         session[:current_user] = user.id
    #         # byebug
    #         return render json: {message: "Welcome, #{user.username}!"}, status: 200
    #     else
    #         return render json: {error: "Invalid Password and/or Username"}, status: 401
    #     end
    # end

    # ix
    # ix
    # ix
    # ix
    # ix
    def login
        user = User.find_by(username:params[:username])
        # byebug
        if user&.authenticate(params[:password])
            # byebug
            session[:current_user] = user.id
            session[:login_attempts] = 0
            render json: user, status: 200
        else
            session[:login_attempts] ||= 0
            session[:login_attempts] += 1
            render json:{error:"Invalid Password and/or Username"},  status: 401
        end
    end 

    def logout
        session.delete :current_user
    end

end
