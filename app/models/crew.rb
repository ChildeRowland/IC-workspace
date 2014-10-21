class Crew < ActiveRecord::Base

	belongs_to :retrofit_job
	belongs_to :asset

end
