class AddReviewToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :reviewid, :integer
  end
end
