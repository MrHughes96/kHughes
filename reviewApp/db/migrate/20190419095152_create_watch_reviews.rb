class CreateWatchReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :watch_reviews do |t|
      t.string :author
      t.float :rating
      t.text :content
      t.date :date

      t.timestamps
    end
  end
end
