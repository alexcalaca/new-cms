class RenameUsersToClients < ActiveRecord::Migration[5.0]
  def change
    rename_table(:users, :clients)
  end
end
