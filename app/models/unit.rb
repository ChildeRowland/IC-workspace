class Unit < ActiveRecord::Base

	# has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
 #  	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
 #  	#validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/]

 	def name_for_retrofit_job
 		"#{mfg} #{nickname} #{finish}"
 	end

  	has_many :inventories
  	has_many :retrofit_jobs, through: :inventories

end
