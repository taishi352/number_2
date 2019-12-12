class UsersController < ApplicationController
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

    end
    def show
    end

    private
    	def user_params
    		params.require(:user).permit(:name, :profile_image_id, :introduction)
    	end
end
