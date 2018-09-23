class AddTestColumnToClients < ActiveRecord::Migration[5.0]
  def change
    add_column :clients, :test, :float, :default => 0
  end
end
