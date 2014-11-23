class Book
	def initialize(title = "test")
		@title = title
	end

	def title
		@title
	end

	def title=(newTitle)
		titleArray = newTitle.split(" ")
		@title = ""
		counter = 1
		notCaps = ['the','a','an','and','but','in', 'of']

		titleArray.each do |titleWord|
			if counter == 1
				@title << titleWord[0].upcase << titleWord[1..-1]
			elsif notCaps.include?(titleWord)
				@title << titleWord
			else
				@title << titleWord[0].upcase << titleWord[1..-1]
			end
			

			if titleArray.count > 1 && titleArray.count > counter
				@title << " "
			end

			counter += 1
		end

		

	end
end

