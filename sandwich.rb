# Sandwich entity class
# 
# The sandwich object, only aware of its contents
class Sandwich

  # Intializes sandwich composition
  def initialize
    @composition = Hash.new {|hash, key| hash[key] = [] }
    @cost = []
  end

  # Add an ingredient to the sandwich
  def add_ingredient(ingredient)
    raise ArgumentError, "Cannot add nothing!" if ingredient.nil?

    @composition[ingredient['type']] << ingredient['name']
    @cost << ingredient['cost']
    self
  end

  # Displays sandwich composition
  def get_composition
    @composition
  end

  # Calculates cost for the sandwich
  def get_cost
    @cost.inject(0) { |total, ingredient_cost| total + ingredient_cost }
  end
end