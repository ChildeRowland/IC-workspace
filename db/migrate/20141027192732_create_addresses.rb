class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :retrofit_job_id
    	t.string :line_one
    	t.string :line_two
    	t.string :city
    	t.string :state
    	t.string :zip
      t.timestamps
    end
  end
end
