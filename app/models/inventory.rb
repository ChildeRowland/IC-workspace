class Inventory < ActiveRecord::Base

	belongs_to :sites
	belongs_to :units

end
