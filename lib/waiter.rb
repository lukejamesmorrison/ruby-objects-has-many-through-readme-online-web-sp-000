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

  def new_meal(customer, total, tip = 0)
    Meal.new(self, customer, total, tip)
  end

  def meals
    Meal.all.filter { |meal| meal.waiter == self }
  end

  def customers
    meals.map do |meal|
      meal.customer
    end
  end
end
