class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.integer :listable_id 
      	t.string :listable_type
      	t.string :title
      	t.text :notes
      t.timestamps
    end
  end
end
