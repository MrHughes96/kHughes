class WatchReviewsController < ApplicationController
	def index
		@watchreview=WatchReview.all
	end
	def new
	end
	def show
		@watchreview=WatchReview.find(params[:id])
	end
	def create
		#render plain: params[:product].inspect
		@watchreview=WatchReview.new(watchreview_params)
		if @watchreview.save
			redirect_to watch_reviews_path
		else
			render 'new'
		end
	end
	def edit
		@watchreview=WatchReview.find(params[:id])
	end
	def update
		@watchreview=WatchReview.find(params[:id])
		if @watchreview.update(watchreview_params)
			redirect_to @watchreview
		else
			render 'edit'
		end
	end
	def destroy
		@watchreview=WatchReview.find(params[:id])
		@watchreview.destroy
		redirect_to watch_reviews_path
	end
	private
	def watchreview_params
		params.require(:watchreview).permit(:author,:rating,:content,:date)
	end
end
