class Waiter

  @@all = []

  def initialize(name, years_of_experience)
    @name = name
    @experience = years_of_experience
    @@all << self
  end

  def self.all
    @@all
  end
end
