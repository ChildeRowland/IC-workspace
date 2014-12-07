class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
    	t.integer :asset_id
    	t.string :airport
    	t.string :seats
  		t.string :airline
  		t.text :other
      t.timestamps
    end
  end
end
