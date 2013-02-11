function update_time_ago(input) {

	var one_minute = 60
	var one_hour = 60 * one_minute
	var one_day = 24 * one_hour
	var one_week = 7 * one_day
	var one_month = one_day * 3652425 / 120000
	var one_year = one_day * 3652425 / 10000

	var words = ""

	var time_now = Math.round((new Date()).getTime()/1000);
	var seconds_ago = time_now - input

	if (seconds_ago < 0) {
		words = "in the future";
	}

	else if (seconds_ago < 10) {
		words = "just now";
	}

	else if (seconds_ago < one_minute) {
		words = Math.round(seconds_ago) + " seconds ago";
	}

	else if (seconds_ago < (2 * one_minute)) {
		words = "about a minute ago";
	}

	else if (seconds_ago < one_hour) {
		words = Math.round(seconds_ago/one_minute) + " minutes ago";
	}

	else if (seconds_ago < (2 * one_hour)) {
		words = "about an hour ago";
	}

	else if (seconds_ago < one_day) {
		words = Math.round(seconds_ago/one_hour) + " hours ago";
	}

	else if (seconds_ago < (2 * one_day)) {
		words = "about a day ago";
	}

	else if (seconds_ago < one_week) {
		words = Math.round(seconds_ago/one_day) + " days ago";
	}

	else if (seconds_ago < (2 * one_week)) {
		words = "about a week ago";
	}

	else if (seconds_ago < one_month) {
		words = Math.round(seconds_ago/one_week) + " weeks ago";
	}

	else if (seconds_ago < (2 * one_month)) {
		words = "about a month ago"
	}

	else if (seconds_ago < one_year) {
		words = Math.round(seconds_ago/one_month) + " months ago";
	}

	else if (seconds_ago < (2 * one_year)) {
		words = "about a year ago";
	}

	else {
		words = Math.round(seconds_ago/one_year) + " years ago";
	}
	
	if (words != "") {
		document.getElementById(input).innerHTML = words;
	}
}