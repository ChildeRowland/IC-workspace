class Inventory < ActiveRecord::Base

	belongs_to :retrofit_jobs
	belongs_to :units

end
