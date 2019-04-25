class AlterReviewToProfile < ActiveRecord::Migration[5.2]
  def change
  	add_foreign_key :tv_reviews, :profiles, column: :profile_id, primary_key: :id
  end
end
