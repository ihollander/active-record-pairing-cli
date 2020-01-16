class CLI
  attr_accessor :name

  def run
    welcome
    main_menu
  end

  def welcome
    puts "Welcome!"
    puts "Please enter your name:"
    self.name = gets.chomp
  end

  def main_menu
    puts "Hello #{self.name}, what would you like to do next?"
    puts "List Games (l), Create Game (c)"
    answer = gets.chomp.downcase
    
    if answer == "l"
      # get all games, iterate through, and print to screen
    elsif answer == "c"
      # prompt the user to create a new game, and save it to the database
    else
      puts "🤷‍♀️"
      main_menu
    end
  end
  
end