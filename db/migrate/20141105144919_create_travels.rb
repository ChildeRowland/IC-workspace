class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|
    	t.integer :crew_id
    	t.string :location_code
    	t.string :carrier_name
    	t.string :carrier_number
    	t.string :confirmation_number
    	t.date :day
    	t.time :depart_time
    	t.time :arrive_time
    	t.string :status
    	t.text :notes
      t.timestamps
    end
  end
end
