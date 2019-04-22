class AddProfileToReview < ActiveRecord::Migration[5.2]
  def change
  	add_reference :phone_reviews, :profile
  end
end
