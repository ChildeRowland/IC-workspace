class Asset < ActiveRecord::Base

	has_many :crews, :dependent => :destroy
	has_many :retrofit_jobs, through: :crews

	has_one :address, :dependent => :destroy
	accepts_nested_attributes_for :address

end
