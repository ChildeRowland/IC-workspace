class Task < ActiveRecord::Base

	STATUS = ['incomplete', 'pending', 'complete']

	belongs_to :retrofit_job

end
