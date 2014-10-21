class RetrofitJob < ActiveRecord::Base

	has_many :contacts, :dependent => :destroy

	has_many :crews
	has_many :assets, through: :crews

end
