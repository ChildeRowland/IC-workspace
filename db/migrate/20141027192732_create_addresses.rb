class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :locatable_id 
      t.string :locatable_type
    	t.string :line_one
    	t.string :line_two
    	t.string :city
    	t.string :state
    	t.string :zip
      t.timestamps
    end
  end
end
