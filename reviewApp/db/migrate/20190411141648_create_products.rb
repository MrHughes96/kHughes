class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :productName
      t.string :brand
      t.float :avgCost
      t.string :category
      t.date :releaseDate
      t.text :description
      t.string :productimg

      t.timestamps
    end
  end
end
