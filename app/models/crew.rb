class Crew < ActiveRecord::Base

	validates_uniqueness_of :asset_id, :scope => :retrofit_job_id

	belongs_to :retrofit_job
	belongs_to :asset

	has_many :travels, :dependent => :destroy

end
