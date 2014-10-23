class Asset < ActiveRecord::Base

	has_many :crews, :dependent => :destroy
	has_many :retrofit_jobs, through: :crews

end
