class Address < ActiveRecord::Base

	validates :state,
		:length => { is: 2, :message => "Use two letter state code." }, allow_blank: true

	validates :zip,
		:allow_blank => true,
		:numericality => 
			{:message => "Use numbers for the zip code."},
		:length => { is: 5, :message => "Zip code should have 5 digits." }

	belongs_to :locatable, polymorphic: true

end
