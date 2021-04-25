class UsersController < ApplicationController
    def index 
        @users = User.all 
        render json: @users
    end

    def create
        @user = User.new(user_params)
        if @user.save
            render json: @user
        else
            render json: {error: "User wasn't created"}
        end
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        @user.save
        render json: @user
    end

    private

    def user_params
        params.require(:user).permit(:name, :birth_date)
    end
end
