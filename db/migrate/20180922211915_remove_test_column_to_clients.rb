class RemoveTestColumnToClients < ActiveRecord::Migration[5.0]
  def change
    remove_column :clients, :test
  end
end
