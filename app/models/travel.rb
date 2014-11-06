class Travel < ActiveRecord::Base

	validates :day,
		:presence => 
		{:message => "Day of Departure can't be left blank, and must follow the recommended format."

		}

	validates :depart_city,
		:presence => 
		{:message => "Depart From can't be left blank"

		}

	validates :depart_time,
		:presence => 
		{:message => "Time of Departure can't be left blank, and must follow the recommended format."

		}

	validates :arrive_city,
		:presence => 
		{:message => "Traveling To can't be left blank"

		}

	validates :arrive_time,
		:presence => 
		{:message => "Time of Arrival can't be left blank, and must follow the recommended format."

		}


	belongs_to :crew

end
