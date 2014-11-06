class Contact < ActiveRecord::Base

	validates :title,
		:presence =>
		{:message => "Contact must have a Title"}

	belongs_to :retrofit_job

end
