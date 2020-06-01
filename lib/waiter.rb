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
    meals.map { |meal| meal.customer }
  end

  def best_tipper
    best_tipped_meal = meals.max do |meal_a, meal_b|
      meal_a.tip <=> meal_b.tip
    end

    best_tipped_meal.customer

  end

end
