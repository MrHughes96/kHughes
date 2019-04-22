class ProductsController < ApplicationController
	def index
		@products=Product.all

	end
	def new
	end
	def show
		#@review=Review.all
		@product=Product.find(params[:id])
		 case @product.id 
			when 13
				@review=TvReview.all
			when 14
				@review=PhoneReview.all
			when 12
				@review=WatchReview.all
			end
	end

	def create
		#render plain: params[:product].inspect
		@product=Product.new(product_params)
		@product.save
		redirect_to products_path
	end
	private
	def product_params
		params.require(:product).permit(:productName, :brand, :avgCost, :category, :releaseDate, :description, :prodimg)
	end
end
 	