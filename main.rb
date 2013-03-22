require_relative './inventory.rb'
require_relative './sandwich.rb'
require_relative './sandwich_machine.rb'

# Main application for sandwich app
class Main

  def initialize
    @sandwich_machine = SandwichMachine.new
    @sandwich_machine.build_sandwich
  end

end

m = Main.new