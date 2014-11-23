def echo(string)
	"#{string}"
end

def shout(string)
	"#{string.upcase}"
end

def repeat(my_string, number_of_times)
	number_of_times.times do 
		"#{my_string}"
	end
end

puts repeat("hello", 2)