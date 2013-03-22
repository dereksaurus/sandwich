# Sandwich entity class
# 
# The sandwich object, only aware of its contents
class Sandwich

  # Intializes sandwich composition
  def initialize
    @composition = {}
  end

  # Add an ingredient to the sandwich
  def add_ingredient(ingredient)
    raise ArgumentError, "Cannot add nothing!" if ingredient.nil?

    @composition[ingredient['type']] = ingredient['name']
    self
  end

  # Displays sandwich composition
  def get_composition
    @composition
    self
  end

end