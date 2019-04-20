class RenameNameToPname < ActiveRecord::Migration[5.2]
  def change
	rename_column :profiles, :name, :pname
  end
end
