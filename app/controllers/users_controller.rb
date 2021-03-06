class UsersController < ApplicationController
    before_action :authenticate_user!, :except=>[:show]
    before_action :admin_user,     only: :destroy
    
    
     private
    
    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end
    
    def index
    @users = User.paginate(page: params[:page])
    end
    
    def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_url
    end

    def show
        @user = User.find(params[:id])
    end
end
