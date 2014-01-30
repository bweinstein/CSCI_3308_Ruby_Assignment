#Author: Brian Weinstein
#Sources: Taken from moodle

# Part1: Hello World
class HelloWorldClass 
    def initialize(name) 
       @name = name.capitalize
    end
    def sayHi
        puts "Hello #{@name}!"
    end
end
hello = HelloWorldClass.new("Brian")
hello.sayHi
