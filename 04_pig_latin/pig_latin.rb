def translate (word)
	wordArray = word.split(" ")
	finalOutput = ""
	counter = 1
	#puts wordArray
	wordArray.each do |splitWord|
		vowels = ['a','e','i','o','u']

		if splitWord.start_with?('a','e','i','o','u')
			splitWord << "ay"
			finalOutput << splitWord
		elsif !vowels.include?(splitWord[0]) && !vowels.include?(splitWord[1]) && !vowels.include?(splitWord[2])
			consonant = splitWord[0..2]
			splitWord << "#{consonant}ay"
			splitWord[3..-1]
			finalOutput << splitWord[3..-1]
		elsif !vowels.include?(splitWord[0]) && splitWord[1..2] == "qu"
			consonant = splitWord[0..2]
			splitWord << "#{consonant}ay"
			splitWord[3..-1]
			finalOutput << splitWord[3..-1]
		elsif (!vowels.include?(splitWord[0]) && !vowels.include?(splitWord[1])) || splitWord[0..1] == "qu"
			consonant = splitWord[0..1]
			splitWord << "#{consonant}ay"
			splitWord[2..-1]
			finalOutput << splitWord[2..-1]
		else
			consonant = splitWord[0]
			splitWord << "#{consonant}ay"
			splitWord[1..-1]
			finalOutput << splitWord[1..-1]
		end

		
		
		if wordArray.count > 1 && wordArray.count != counter
			finalOutput << " "
		end

		counter += 1
		
		
	end
	return finalOutput

end

translate("eat pie")