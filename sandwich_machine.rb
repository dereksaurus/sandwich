# Manager class which handles logic to create a sandwich
class SandwichMachine

  # Intialize relevant objects
  def initialize
    @inventory = Inventory.new
    @sandwich = Sandwich.new
  end

  # Does the main interface work involved for building a sandwich
  def build_sandwich
    @inventory.get_contents.keys.each do |type|
      contents = @inventory.send "get_#{type}"

      while agree "Do you want to add #{type}? "
        puts "-------------------------------------------"

        choose do |menu|
          menu.prompt  = "Select a #{type[0..-2]}: "

          contents.each_with_index do |ingredient, index|
            menu.choice "#{ingredient['name'].capitalize} - $#{'%.2f' % ingredient['cost']}" do
              ingredient['type'] = type
              @sandwich.add_ingredient ingredient
              say "#{ingredient['name'].capitalize} selected."
            end
          end

        end
      end
    end

    show_sandwich
  end

  private

  #Display for final sandwich
  def show_sandwich
    sandwich_content = @sandwich.get_composition

    puts "Here is your sandwich you ordered:"
    puts "-------------------------------------------"
    sandwich_content.each do |key, value|
      puts "#{key.capitalize}: #{value.to_sentence}"
    end
    puts "-------------------------------------------"
    puts "TOTAL COST: $#{'%.2f' % @sandwich.get_cost}"
  end

end