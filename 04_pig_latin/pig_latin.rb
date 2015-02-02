def vowel?(letter)
	vowels = %w(a e i o u)
	vowels.include?(letter)
end

def consonant?(letter)
	!vowel?(letter)
end

def startswith?(string, prefix)
	string[0..prefix.length-1] == prefix
end

def translateword(string)
	case
	when vowel?(string[0])
		string += "ay"
	when consonant?(string[0]) && consonant?(string[1]) && consonant?(string[2])
		string = string[3..-1] + string[0..2] + "ay"
	when startswith?(string, "qu"), consonant?(string[0]) && consonant?(string[1])
		string = string[2..-1] + string[0..1] + "ay"
	when consonant?(string[0])
		string = string[1..-1] + string[0] + "ay"
	end
end

def translate(string)

	new_array = string.split(' ').map do |word|
		translateword(word)
	end
	new_array.join(" ")
end


