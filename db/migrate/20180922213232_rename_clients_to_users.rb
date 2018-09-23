class RenameClientsToUsers < ActiveRecord::Migration[5.0]
  def change
    rename_table("clients", "users")
  end
end
