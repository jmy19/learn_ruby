def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, num = 2)
	new_string = (word + " ") * num
	new_string.strip	
end

def start_of_word(word, num = 1)
	word.split('')[0..num - 1].join("")	
end

def first_word(string)
	string.split(' ').first
end



def titleize(title)
  stop_words = ["and", "in", "the", "of", "a", "an", "over"]
  title.capitalize.split.map{|w| stop_words.include?(word) ? word : word.capitalize}.join(' ')
end
