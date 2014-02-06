#Author: Brian Weinstein
#Sources: Moodle, ESaaS

class Class
  def attr_accessor_with_history(attr_name)
    #Make sure string
    attr_name = attr_name.to_s
    attr_reader attr_name
    attr_reader attr_name+"_history"
    #If history exists then append, else create
    class_eval %Q"
	def #{attr_name}=(value)
		if !defined? @#{attr_name}_history
			@#{attr_name}_history = [@#{attr_name}]
		end
	@#{attr_name}_history << value
	@#{attr_name} = value
	end
	"
  end
end


class Foo
      attr_accessor_with_history :bar
end

f = Foo.new
f.bar = 8
f.bar = :holymoly
f.bar = "hellothere"
f.bar = :cheezus

if(f.bar_history != [nil, 8, :holymoly, 'hellothere', :cheezus])
	puts "FAILED"
else
	puts "All tests passed"
end 	