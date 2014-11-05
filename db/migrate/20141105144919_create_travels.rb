class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|
    	t.integer :crew_id
    	t.string :carrier_name
    	t.string :carrier_number
    	t.string :confirmation_number
    	t.date :day
        t.string :depart_city
    	t.time :depart_time
        t.string :arrive_city
    	t.time :arrive_time
    	t.string :status
    	t.text :notes
      t.timestamps
    end
  end
end
