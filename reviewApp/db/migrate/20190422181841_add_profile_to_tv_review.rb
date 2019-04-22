class AddProfileToTvReview < ActiveRecord::Migration[5.2]
  def change
  	add_reference :tv_reviews, :profile
  end
end
