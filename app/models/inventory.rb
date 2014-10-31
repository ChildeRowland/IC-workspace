class Inventory < ActiveRecord::Base

	STATUS = ['speculitive', 'ordered', 'shipped', 'warehouse', 'on site', 'missing']

	belongs_to :retrofit_job
	belongs_to :unit

end
