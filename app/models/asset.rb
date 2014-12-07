class Asset < ActiveRecord::Base

	validates :fname,
		:presence => 
		{:message => "Asset must have a first name."}


	has_many :crews, :dependent => :destroy
	has_many :retrofit_jobs, through: :crews

	has_one :address, as: :locatable, :dependent => :destroy
	accepts_nested_attributes_for :address

	has_one :preference, :dependent => :destroy

	def first_and_last_name
		"#{fname} #{lname}"
	end

end
