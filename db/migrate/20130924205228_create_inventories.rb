class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :title
      t.text :description
      t.integer :quantity

      t.timestamps
    end
  end
end
