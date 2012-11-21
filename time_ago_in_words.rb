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

			return "" if input.nil?

			unless (input.is_a? Date) || (input.is_a? Time)
				return "Liquid error: can't convert that to a Time!"
			end

			seconds_ago = Time.now - input

			if seconds_ago < 0
				return "in the future"
			
			elsif seconds_ago < 10
				return "just now"
			
			elsif seconds_ago < one_minute
				return seconds_ago + " seconds ago"
			

			elsif seconds_ago < 2 * one_minute
				return "about a minute ago"
			
			elsif seconds_ago < one_hour
				return (seconds_ago/one_minute).round.to_s + " minutes ago"
			

			elsif seconds_ago < 2 * one_hour
				return "about an hour ago"
			
			elsif seconds_ago < one_day
				return (seconds_ago/one_hour).round.to_s + " hours ago"
			

			elsif seconds_ago < 2 * one_day
				return "about a day ago"
			
			elsif seconds_ago < one_week
				return (seconds_ago/one_day).round.to_s + " days ago"
			

			elsif seconds_ago < 2 * one_week
				return "about a week ago"
			
			elsif seconds_ago < one_month
				return (seconds_ago/one_week).round.to_s + " weeks ago"
			

			elsif seconds_ago < 2 * one_month
				return "about a month ago"
			
			elsif seconds_ago < one_year
				return (seconds_ago/one_month).round.to_s + " months ago"
			

			elsif seconds_ago < 2 * one_year
				return "about a year ago"
			else
				return (seconds_ago/one_year).round.to_s + " years ago"
			end

		end
	end
end