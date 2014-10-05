class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
    	t.integer :site_id
    	t.integer :unit_id
      t.timestamps
    end
  end
end
