# JOIN TABLE
class Flight

  attr_reader :airline, :airport, :origin, :destination

  @@all = []

  def initialize(airline, airport, origin, destination)
    @airline = airline
    @airport = airport

    @@all << self
  end

  # INSTANCE METHODS

  # CLASS METHODS
  def self.all
    @@all
  end


end
