class ChangeNameColumnToFirstName < ActiveRecord::Migration[5.0]
  def change
    rename_column("clients", "name", "first_name")
  end
end
