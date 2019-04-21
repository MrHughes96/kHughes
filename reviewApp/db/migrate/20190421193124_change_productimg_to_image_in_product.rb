class ChangeProductimgToImageInProduct < ActiveRecord::Migration[5.2]
  def up
  	change_column :products, :productimg, :string
  end
  def down
  	change_column :products, :productimg, :attachment
  end
end
