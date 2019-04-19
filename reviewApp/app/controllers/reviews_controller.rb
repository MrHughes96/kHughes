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
	def edit
		@review=Review.find(params[:id])
	end
	def update
		@review=Review.find(params[:id])
		if @review.update(review_params)
			redirect_to @review
		else
			render 'edit'
		end
	end
	def destroy
		@review=Review.find(params[:id])
		@review.destroy
		redirect_to reivews_path
	end
	private
	def review_params
		params.require(:review).permit(:author,:rating,:content,:date)
	end
end
