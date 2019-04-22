class AddProductToWatchReview < ActiveRecord::Migration[5.2]
  def change
  	add_reference :watch_reviews, :products, foreign_key: true
  end
end
