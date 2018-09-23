class AddPermalinkIndexToPagesTable < ActiveRecord::Migration[5.0]
  def change
    add_index("pages", "permalink")
  end
end
