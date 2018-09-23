class AddDefaultOptionToSectionsTable < ActiveRecord::Migration[5.0]
  def change
    change_column("sections", "visible", "boolean", :default => false)
  end
end
