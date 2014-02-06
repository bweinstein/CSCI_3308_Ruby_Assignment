#Author: Brian Weinstein
#Sources: Rubydoc, moodle, ESaaS

class String
  def palindrome?
    tmp_str = self.downcase.gsub(/[^a-z]/,'')
    tmp_str.reverse == tmp_str
  end
end

module Enumerable
  def palindrome?
    self == self.reverse
  rescue NoMethodError
    self.to_a == self.to_a.reverse
  end
end

if "Foo".palindrome?
	puts "FAILED test1"
elsif !("racecar".palindrome?)
	puts "FAILED test2"
elsif ([1,2,3,4,5,6].palindrome?)
	puts "FAILED test3"
else
	puts "All tests passed"
end