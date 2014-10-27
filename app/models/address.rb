class Address < ActiveRecord::Base

	belongs_to :asset
	belongs_to :retrofit_job

end
