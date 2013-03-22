# Manager class which handles logic to create a sandwich
class SandwichMachine

  def initialize
    @inventory = Inventory.new
    @sandwich = Sandwich.new
  end

  def build_sandwich
    @inventory.get_contents.keys.each do |type|
      contents = @inventory.send("get_#{type}")

      contents.each_with_index do |data, index|
        p "#{index}) #{data['name'].capitalize} - $#{data['cost'].round(2)}"
      end

      print "Pick something:"
      choice = gets

      # Massage ingredient object to be added.
      ingredient = contents[choice.to_i]
      ingredient['type'] = type

      @sandwich.add_ingredient ingredient
      p @sandwich.get_composition
    end
  end

end