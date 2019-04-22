class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	private
	def current_user
		@current_user ||=User.find(session[:user_id]) if session[:user_id]
	end
	helper_method :current_user
	private
	def current_profile
		@current_profile ||=Profile.find_by(user_id: session[:user_id])
	end
	helper_method :current_profile

	def authorize
		redirect_to new_session_path,alert: 'Please Log in or Create an account' if current_user.nil?
		#flash[:alert]= 'Please Log in or Create an account'
	end
end

