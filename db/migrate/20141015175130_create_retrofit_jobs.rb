class CreateRetrofitJobs < ActiveRecord::Migration
  def change
    create_table :retrofit_jobs do |t|
    	t.string :store_number	
    	t.string :mall_name
    	t.string :phone
    	t.text :hours
      t.string :url
    	t.date :start
    	t.date :finish
      t.timestamps
    end
  end
end
