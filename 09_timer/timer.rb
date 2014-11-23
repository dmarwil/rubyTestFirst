
class Timer
	def initialize(seconds = 0)
		@seconds = seconds
	end

	def seconds
		@seconds
	end

	def seconds=(seconds)
		@seconds = seconds
	end

	def time_string
		hours = @seconds/3600
		minutes = (@seconds%3600)/60
		seconds = (@seconds%3600)%60
		
		if hours < 10
			hours = hours.to_s.prepend('0')
		elsif hours == 0
			hours = hours.to_s.prepend('00')
		end
		if minutes < 10
			minutes = minutes.to_s.prepend('0')
		elsif minutes == 0
			minutes = minutes.to_s.prepend('00')
		end
		if seconds < 10
			seconds = seconds.to_s.prepend('0')
		elsif seconds == 0
			 seconds = seconds.to_s.prepend('00')
		end

		return "#{hours}:#{minutes}:#{seconds}"
	end
end