def vowel?(letter)
	vowels = %w(a e i o u)
	vowels.include?(letter)
end

def consonant?(letter)
	!vowel?(letter)
end


def translate(string)
	case
	when vowel?(string[0])
		string += "ay"
	when consonant?(string[0]) && consonant?(string[1])
		string = string[2..-1] + string[0..1] + "ay"	
	when consonant?(string[0])
		string = string[1..-1] + string[0] + "ay"
	end

	
end

puts translate("ituff")