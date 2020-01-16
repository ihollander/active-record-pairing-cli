require_relative '../config/environment.rb'

def run
  name = get_name
  puts "Hello #{name}, what would you like to do next?"
  main_menu
end

def get_name
  puts "Welcome!"
  puts "Please enter your name:"
  gets.chomp
end

def main_menu
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

run