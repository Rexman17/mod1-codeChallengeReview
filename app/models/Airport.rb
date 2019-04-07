class Airport

  attr_reader :name, :cost_to_build, :dog_friendly
  @@all = []

  def initialize(name, cost_to_build, dog_friendly)
    @name = name
    @cost_to_build = cost_to_build
    @dog_friendly = dog_friendly

    @@all << self
  end

  # INSTANCE METHODS
  def schedule_flight(airline, origin, destination)
    Flight.new(airline, self, origin)
  end

  # CLASS METHODS
  def self.all
    @@all
  end

  def self.love_doggos
    Airport.all.select do |airport|
      airport.dog_friendly == true
    end
  end

  def self.most_expensive
    Airport.all.max_by { |airport| airport.cost_to_build }
    # Airport.all.max { |a, b| a.cost_to_build <=> b.cost_to_build }
  end

end
