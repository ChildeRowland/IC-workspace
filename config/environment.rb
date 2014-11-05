# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!


Time::DATE_FORMATS[:clock] = "%I:%M %p"
Date::DATE_FORMATS[:logistics_date] = "%A %m.%e.%y"
Date::DATE_FORMATS[:install_date] = "%B, %d %Y"