class Report < ActiveRecord::Base

	belongs_to :retrofit_job

	has_many :items, as: :listable, :dependent => :destroy
	accepts_nested_attributes_for :items

end
