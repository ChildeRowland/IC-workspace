class Task < ActiveRecord::Base

	validates :title,
		:presence =>
		{:message => "Task must have a title"}

	STATUS = ['incomplete', 'pending', 'complete']

	belongs_to :retrofit_job

end
