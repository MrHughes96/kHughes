class UsersController < ApplicationController
	def index
	end
	def new
		@user=User.new
	end
	def create 
		@user=User.new(user_params)
		if @user.save
			redirect_to static_pages_home_path, notice:
			"Welcome #{@user.userid}! to Sheffield E-Reviews"
		else
			render 'new'
		end
	end
	def user_params
		params.require(:user).permit(:userid,:email,:password,:password_confirmation)
	end	
end

