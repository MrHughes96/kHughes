class AddProductToPhoneReview < ActiveRecord::Migration[5.2]
  def change
  	add_reference :phone_reviews, :products, foreign_key: true
  end
end
