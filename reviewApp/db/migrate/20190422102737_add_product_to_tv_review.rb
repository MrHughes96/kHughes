class AddProductToTvReview < ActiveRecord::Migration[5.2]
  def change
  	add_reference :tv_reviews, :products, foreign_key: true
  end
end
