class ProfilesController < ApplicationController

	def index
		@profiles=Profile.all
	end
	def new
	end
	def show
		@profiles=Profile.find(params[:id])
		logger.info "Profile: #{@profiles}"
		logger.info "Profile is Nil? #{@profiles.nil?}"
	end
	def create
		#render plain: params[:product].inspect
		@profiles=Profile.new(profile_params)
		if @profiles.save
			redirect_to profiles_path
		else
			render 'new'
		end
	end
	def edit
		@profiles=Profile.find(params[:id])
	end
	def update
		@profiles=Profile.find(params[:id])
		if @profiles.update(profile_params)
			redirect_to @profiles
		else
			render 'edit'
		end
	end
	def destroy
		@profiles=Profile.find(params[:id])
		@profiles.destroy
		redirect_to profiles_path
	end
	private
	def profile_params
		params.require(:profile).permit(:pname,:dob,:address,:city,:country,:userimg, :user_id)
	end
end

