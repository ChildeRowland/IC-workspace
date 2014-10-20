class CreateCrews < ActiveRecord::Migration
  def change
    create_table :crews do |t|
    	t.integer :retrofit_job_id
    	t.integer :asset_id
      t.timestamps
    end
  end
end
