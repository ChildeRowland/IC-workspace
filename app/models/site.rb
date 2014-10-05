class Site < ActiveRecord::Base

	has_many :inventories
  	has_many :units, through: :inventories

end
