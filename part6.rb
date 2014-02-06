#Author: Brian Weinstein	
#sources: Rubydoc, unix glob documentation

def glob_match(filenames, pattern)
  results = Array.new
  #Convert pattern to ruby regex from bash regex
  pattern = pattern.gsub("\?", ".")
  pattern = pattern.gsub("\*", ".*")
  #convert into a proper regex
  pattern = Regexp.new(pattern)
  filenames.each{|name|
    name=name[pattern]
    if(name)
      results << name
    end
  }
  return results

end

test_files= ["part1.rb", "part2.rb", "part2.rb~", ".part3.rb.un~"]
pattern = "*part*rb?*"

if(glob_match(test_files,pattern) != ["part2.rb~", ".part3.rb.un~"])
  puts glob_match(test_files,pattern).to_s
  puts "FAILED"
else
  puts "Tests passed. Woohoo!"
end
