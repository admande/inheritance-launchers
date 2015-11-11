module VenusDweller
  def home
    "Venus"
  end
end

module SlowRunner
  def speed_in_mph
    10
  end
end

module SuperHero
  attr_reader :public_identity

  def initialize(public_identity, secret_identity)
    @public_identity = public_identity
    @secret_identity = secret_identity
  end

  def species
    "Human"
  end

  def home
    "Earth"
  end

  def fans_per_thousand
    500
  end

  def powers
    "has powers"
  end

  def weakness
    "Luke Bayne"
  end

  def backstory
    "Has a backstory"
  end

  def speed_in_mph
    60
  end

  def health
    100
  end

  def psychic?
    false
  end

  private
  attr_reader :secret_identity
end

class Speedster
  include SuperHero
  
  def speed_in_mph
    60000
  end

end

class Brawler
  include SuperHero

  def health
    2000
  end
end

class Detective
  include SuperHero
  include SlowRunner
end

class Demigod
    include SuperHero
  def home
    "Cosmic Plane"
  end
end

class JackOfAllTrades
  include SuperHero
  include VenusDweller

  def species
    "Alien"
  end

  def psychic?
    true
  end

end

class WaterBased
  include SuperHero

  def home
    "Earth's Oceans"
  end


  def fans_per_thousand
    5
  end

  def psychic?
    true
  end

end
