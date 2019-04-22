class PhoneReviewsController < ApplicationController
	before_action :authorize, :only => [ :create]
	def index
		@phonereview=PhoneReview.all
	end
	def new
	end
	def show
		@product=Product.find(params[:id])
		@phonereview=PhoneReview.find(params[:id])
	end
	def create
		#render plain: params[:phonereview].inspect
		@phonereview=PhoneReview.new(phonereview_params)
		if @phonereview.save
			redirect_to phone_reviews_path, notice: "Created Review Successfully"
		else
			redirect_to phone_reviews_path, alert: "You need to Log in to create a review!"
		end
	end
	def edit
		@phonereview=PhoneReview.find(params[:id])
	end
	def update
		@phonereview=PhoneReview.find(params[:id])
		if @phonereview.update(phonereview_params)
			redirect_to @phonereview
			#phone_reviews_path(
		else
			render 'edit'
		end
	end
	def destroy
		@phonereview=PhoneReview.find(params[:id])
		@phonereview.destroy
		redirect_to phone_reviews_path
	end
	private
	def phonereview_params
		params.require(:phonereview).permit(:author,:rating,:content,:date,:products_id)
		#require(:phonereview).
	end
end