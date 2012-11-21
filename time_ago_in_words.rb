######
# 
# 	A rails-style time_ago_in_words filter for the liquid
# 	Author: Alex Browne
# 
# 	Based on Klaus Byskov Hoffmann's language-agnostic code
# 	http://goo.gl/GUVDn
#
# 	Documentation:
#		https://github.com/stephenalexbrowne/liquid_time_ago_in_words
# 
###

module Liquid
	module StandardFilters
		def time_ago_in_words(input)      
			one_minute = 60
			one_hour = 60 * one_minute
			one_day = 24 * one_hour
			one_week = 7 * one_day
			one_month = one_day * 3652425 / 120000
			one_year = one_day * 3652425 / 10000

			seconds_ago = Time.now - input

			if seconds_ago < 0
				return "in the future"
			
			elsif seconds_ago < 10
				return "just now"
			
			elsif seconds_ago < one_minute
				return str(seconds_ago) + " seconds ago"
			

			elsif seconds_ago < 2 * one_minute
				return "about 1 minute ago"
			
			elsif seconds_ago < one_hour
				return str(seconds_ago/one_minute) + " minutes ago"
			

			elsif seconds_ago < 2 * one_hour
				return "about 1 hour ago"
			
			elsif seconds_ago < one_day
				return str(seconds_ago/one_hour) + " hours ago"
			

			elsif seconds_ago < 2 * one_day
				return "about 1 day ago"
			
			elsif seconds_ago < one_week
				return str(seconds_ago/one_day) + " days ago"
			

			elsif seconds_ago < 2 * one_week
				return "about 1 week ago"
			
			elsif seconds_ago < one_month
				return str(seconds_ago/one_week) + " weeks ago"
			

			elsif seconds_ago < 2 * one_month
				return "about 1 month ago"
			
			elsif seconds_ago < one_year
				return str(seconds_ago/one_month) + " months ago"
			

			elsif seconds_ago < 2 * one_year
				return "about 1 year ago"
			else
				return str(seconds_ago/one_year) + " years ago"
			end

		end
	end
end