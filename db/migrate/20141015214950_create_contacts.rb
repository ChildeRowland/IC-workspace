class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
    	t.integer :retrofit_job_id
    	t.string :title
    	t.string :fname
    	t.string :lname
    	t.string :email
    	t.text :notes
      t.timestamps
    end
  end
end
