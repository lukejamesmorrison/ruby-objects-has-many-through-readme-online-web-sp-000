class Meal

  @@all = []

  def initialize(waiter, customer, total, tip = 0)
    @waiter = waiter
    @customer = customer
    @total = total
    @tip = tip
    @@all << self
  end

  def self.all
  end
end
