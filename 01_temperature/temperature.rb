def ftoc(temperature)
	((temperature - 32)/1.8).round(1)
end

def ctof(temperature)
	temperature*1.8 + 32
end
