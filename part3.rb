#Author: Brian Weinstein
#Sources: rubydoc, stackoverflow

def count_words(string)
	#remove all non-alphanumeric chars	
	#@alphas = string.gsub(/[^0-9a-zA-Z\s]/, ' ')
	#make string lower case
	#@lowcase = @alphas.downcase
	#split into array
	#@split = @lowcase.split(/\s/)
	
	@wordCounter = Hash.new(0)
	
	@string1 = string.gsub(/[^a-zA-Z0-9\s]/, '')
	
	@string1.downcase.split(/\s/).each do |word|
		@wordCounter[word] += 1
	end
	puts @wordCounter
end

#testing 
count_words("A man, a plan, a canal -- Panama")
