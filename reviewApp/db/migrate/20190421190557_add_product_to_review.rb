class AddProductToReview < ActiveRecord::Migration[5.2]
  def change
  	add_reference :phone_reviews, :products
  end
end
