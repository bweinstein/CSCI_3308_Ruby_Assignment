#Author: Brian Weinstein
#Source: rubydoc, stackoverflow, Jennings 

def combine_anagrams(words)
  output_array = Array.new(0) #create a new output array
  words.each do |firstword| 
	temp_array = [] #create a temp array 
    words.each do |nextword|
		if (nextword.downcase.split(//).sort == firstword.downcase.split(//).sort) #compare if two words are anagrams
			temp_array.push(nextword) #if so, push nextword to array
		end
    end
    output_array.push(temp_array) #push word to output array, then move up
  end
  
  return output_array.uniq #output array
end


#testing  

testwords = (['cars', 'for', 'potatoes', 'racs', 'four', 'scar', 'creams', 'scream'])
print combine_anagrams(testwords)
