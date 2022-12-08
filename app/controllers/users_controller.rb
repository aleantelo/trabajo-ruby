class UsersController < ApplicationController
    skip_before_action :protect_pages, only: :show

    def show
        @user = User.find_by(id: params[:id])
    end

    def edit
        user
    end

    def update
        if user.update(user_params)
            redirect_to turns_path, notice: t(".updated")
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def index
        @users = User.all
    end
    
    def destroy
        user.destroy
        redirect_to '/user', notice: t(".destroyed") 
    end
    
    private
    def user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:password, :email, :id)
    end
end