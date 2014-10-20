class Crew < ActiveRecord::Base

	belongs_to :retrofit_jobs
	belongs_to :assets

end
