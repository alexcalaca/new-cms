class AddDefaultOptionToPagesTable < ActiveRecord::Migration[5.0]
  def change
    change_column("pages", "visible", "boolean", :default => false)
  end
end
