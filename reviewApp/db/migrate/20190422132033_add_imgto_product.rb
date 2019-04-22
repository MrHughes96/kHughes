class AddImgtoProduct < ActiveRecord::Migration[5.2]
  def change
  	add_attachment :products, :prodimg
  end
end
