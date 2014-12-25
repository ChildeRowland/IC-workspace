class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
    	t.integer :retrofit_job_id
    	t.date :day
    	t.string :completed_by
      t.timestamps
    end
  end
end
