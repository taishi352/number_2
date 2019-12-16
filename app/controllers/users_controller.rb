class UsersController < ApplicationController

    before_action :authenticate_user!
	def new
		@user = User.new
    end
    def create
    	@user = User.new(user_params)
    	@user.user_id = current_user.user_id
    	@user.save
    	redirect_to users_path
    end
    def index
        @user = current_user
        @users = User.all
        @book = Book.new
    end
    def edit
        @user = User.find(params[:id])
    end
    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to books_path
    end

    private
    	def user_params
    		params.require(:user).permit(:name, :profile_image, :introduction)
    	end
end
