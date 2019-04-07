# Has many airports through flights
class Airline

  attr_reader :name, :ceo, :founding_year

  @@all = []

  def initialize(name, ceo, founding_year)
    @name = name
    @ceo = ceo
    @founding_year = founding_year

    @@all << self
  end

  # INSTANCE METHODS
  def acquisition(ceo, name)
    @ceo = ceo
    @name = name
  end

  def num_flights
    my_flights.select do |flight|
      flight.airline == self
    end.count
  end

  # HELPER
  def my_flights
    Flight.all.select do |flight|
      flight.airline == self
    end
  end

  def airports
    my_flights.map do |flight|
      flight.airport.name
    end
  end

  # CLASS METHODS
  def self.all
    @@all
  end

  def self.find_by_ceo(ceo)
    Airline.all.find do |airline|
      # binding.pry
      airline.ceo == ceo
    end
  end

end
