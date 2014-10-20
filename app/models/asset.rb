class Asset < ActiveRecord::Base

	has_many :crews
	has_many :retrofit_jobs, through: :crews

end
