require 'yaml'

# Inventory class manages ingredients
class Inventory

  # Construct loads serialized ingredients data
  def initialize
    @ingredients = YAML.load_file('storage.yml')
    self
  end

  # Getter for ingredients
  def get_contents
      @ingredients
  end

  # Getter for breads
  def get_breads
    @ingredients['breads']
  end

  # Getter for condiments
  def get_condiments
    @ingredients['condiments']
  end

  # Getter for meats
  def get_meats
    @ingredients['meats']
  end

  # Getter for vegetables
  def get_vegetables
   @ingredients['vegetables']
  end

end