class RemoveIdFromProduct < ActiveRecord::Migration[5.2]
  def change
  	remove_column :phone_reviews, :products_id
  end
end
