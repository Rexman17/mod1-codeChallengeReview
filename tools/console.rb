require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
american = Airline.new("American Airlines", "Bob America", 1900)
delta = Airline.new("Delta Airlines", "Delta Darla", 1967)
southwest = Airline.new("Southwest", "Sam", 2013)


laguardia = Airport.new("LGA", 4000000, true)
jfk = Airport.new("JFK", 3000000, false)
newark = Airport.new("Newark", 30, true)


f1 = Flight.new(american, jfk, "New York", "Honolulu")
f2 = Flight.new(american, laguardia, "New York", "San Francisco")
f3 = Flight.new(delta, newark, "New York", "San Francisco")
f4 = Flight.new(delta, jfk, "New York", "San Francisco")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
