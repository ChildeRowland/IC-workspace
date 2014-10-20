class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
    	t.string :fname
    	t.string :mname
    	t.string :lname
    	t.date :dob
    	t.string :phone
    	t.string :email
    	t.string :rate
      t.timestamps
    end
  end
end
