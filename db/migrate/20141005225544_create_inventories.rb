class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
    	t.integer :retrofit_job_id
    	t.integer :unit_id
    	t.integer :quantity
    	t.string :status
      t.timestamps
    end
  end
end
