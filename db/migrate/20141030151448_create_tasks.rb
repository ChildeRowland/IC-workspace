class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
    	t.integer :retrofit_job_id
    	t.string :title
    	t.string :description
		t.text :notes
		t.string :status    	
      t.timestamps
    end
  end
end
