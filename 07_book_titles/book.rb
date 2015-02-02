class Book 
	attr_reader :title
	def title=(string)
		@title = []
		string.split(' ').each do |word|
			@title << word.capitalize!
		end
	end

	def title
		@title.join(' ')
	end

	def specify(exception)
			@title.find_index {|word| word == exception}

	end

	def articles
		@title[specify].downcase!
		title
	end
end