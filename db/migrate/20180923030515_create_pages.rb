class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :name
      t.integer :permalink
      t.integer :position
      t.boolean :visible
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
