class AddPasswordDigestToAdminUsers < ActiveRecord::Migration[5.0]
  def change
    rename_column :admin_users, :password, :password_digest
  end
end
