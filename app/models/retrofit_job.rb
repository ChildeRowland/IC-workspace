class RetrofitJob < ActiveRecord::Base

	validates :store_number, 
		:presence => 
		{:message => "Store Number cannot be left blank"}, 
		:numericality => 
		{:message => "Use numbers in the Store Number field"},
		:length => { is: 3, :message => "Store Number must have 3 digits to save."}

	has_many :contacts, :dependent => :destroy

	has_many :crews, :dependent => :destroy
	has_many :assets, through: :crews

	has_one :address, as: :locatable, :dependent => :destroy
	accepts_nested_attributes_for :address
	
	def google_maps_format
		a = address
		"#{a.line_one},#{a.city},#{a.state} #{a.zip}"
	end

	def store_name_and_number
		"#{store_number} #{mall_name}"
	end

end
