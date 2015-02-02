def add(x,y)
	x+y
end

def subtract(x,y)
	x-y
end

def sum(array)
	total = 0
	array.each {|x| total += x}
	total
end

def multiply(*digit)
	total = 1
	digit.each {|x| total *= x}
	total
end 

def factorial(digit)
	if digit == 0
		total = 0
	else
		total = 1
		while digit > 0
			total *= digit
			digit -=1
		end
	end
	total
end

	
