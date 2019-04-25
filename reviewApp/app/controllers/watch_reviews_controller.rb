class WatchReviewsController < ApplicationController
	before_action :authorize, :only => [ :create]
	def index
		@watchreview=WatchReview.all
		@watchreview = if params[:term]
							WatchReview.where('content like ?', "%#{params[:term]}")
					else 
						WatchReview.all
					end
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
			redirect_to watch_reviews_path, notice: "Created Review Successfully"
		else
			redirect_to watch_reviews_path, alert: "You need to Log in to create a review!"
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
		params.require(:watchreview).permit(:products_id,:profiles_id,:author,:rating,:content,:date)
	end
end
