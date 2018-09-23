class AddDefaultOptionToSubjectTable < ActiveRecord::Migration[5.0]
  def change
    change_column("subjects", "visible", "boolean", :default => false)
  end
end
