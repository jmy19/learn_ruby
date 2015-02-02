def reverser
	new_string = []
	string = yield.split(" ").each do |x|
		new_string << x.reverse!
	end
	new_string.join(" ")
end

def adder(num = 1)
	yield + num
end

def repeater(num = 1)
	num.times{yield}
end