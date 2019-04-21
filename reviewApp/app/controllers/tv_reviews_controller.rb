class TvReviewsController < ApplicationController
	def index
		@tvreview=TvReview.all
	end
	def new
	end
	def show
		@tvreview=TvReview.find(params[:id])
	end
	def create
		render plain: params[:product].inspect
		@tvreview=TvReview.new(tvreview_params)
		if @tvreview.save
			redirect_to tv_reviews_path
		else
			render 'new'
		end
		
	end
	def edit
		@tvreview=TvReview.find(params[:id])
	end
	def update
		@tvreview=TvReview.find(params[:id])
		if @tvreview.update(tvreview_params)
			redirect_to @tvreview
		else
			render 'edit'
		end
	end
	def destroy
		@tvreview=TvReview.find(params[:id])
		@tvreview.destroy
		redirect_to tv_reviews_path
	end
	private
	def tvreview_params
		params.require(:tvreview).permit(:author,:rating,:content,:date)
	end
end


