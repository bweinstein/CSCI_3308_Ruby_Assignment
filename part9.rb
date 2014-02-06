#Author: Brian Weinstein
#Sources: ESaas, rubydoc, moodle


class Numeric
  #list of currency conversions
  @@currencies = {'dollar' => 1, 'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019}
  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end

  def in(destination_currency)
    destination_currency = destination_currency.to_s.gsub(/s$/, '')
    if @@currencies.has_key?(destination_currency)
      self / @@currencies[destination_currency]
    else
      super
    end
  end

if(5.dollar.in(:euro) != 5 / 1.292)
  puts 5.dollar.in(:euro).to_s
  puts "Incorrect value"
elsif(10.euros.in(:rupees) != 10*1.292/0.019)
  puts 10.euros.in(:rupees)
  puts "Incorret value"
else
  puts "All tests passed."
end
end