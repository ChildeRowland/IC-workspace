class RetrofitJob < ActiveRecord::Base

	has_many :contacts

	has_many :crews
	has_many :assests, through: :crews

end
