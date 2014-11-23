def add(a_number, another_number)
	a_number+another_number
end

def subtract(a_number, another_number)
	a_number - another_number
end

def sum(an_array)
	sum = 0
	an_array.each do |x|
		sum += x
	end
	return sum
end

def multiply(*numbers)
	numbers.inject { |product, number| product*number}
end

def power(a_number, raised_to)
	a_number ** raised_to
end

def factorial(a_number)
	product = 1
	if a_number == 0
		return product
	end
	while a_number > 0 do
		product = product * a_number
		a_number -= 1
	end
	return product
end
