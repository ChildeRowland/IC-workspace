class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :unit_type
    	t.string :order_identifier
    	t.string :vendor
    	t.string :mfg
    	t.string :product_identifier
    	t.string :nickname
      t.string :finish
    	t.string :description
    	t.text :notes
    	t.integer :product_type
      t.timestamps
    end
  end
end
