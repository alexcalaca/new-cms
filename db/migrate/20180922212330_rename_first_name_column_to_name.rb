class RenameFirstNameColumnToName < ActiveRecord::Migration[5.0]
  def change
    rename_column :clients, :first_name, :name
  end
end
