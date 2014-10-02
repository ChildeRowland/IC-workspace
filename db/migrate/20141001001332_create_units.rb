class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
    	t.attachment :avatar
      t.string :unit_type
    	t.string :order_id
    	t.string :vendor
    	t.string :mfg
    	t.string :product_id
    	t.string :nickname
    	t.string :description
    	t.string :notes
    	t.integer :product_type
      t.timestamps
    end
  end
end
