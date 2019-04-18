class ReviewsController < ApplicationController
	def new
	end
	def show
		@review=Review.find(params[:id])
	end
	def create
		#render plain: params[:review].inspect
		@review=Review.new(review_params)
		@review.save
		redirect_to @review
	end
	private
	def review_params
		params.require(:review).permit(:author,:rating,:content,:date)
	end
end
