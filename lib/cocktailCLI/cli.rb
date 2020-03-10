
class CocktailCLI::CLI

    def call 
        puts "Hello! Please enter your name..."
        name = gets.chomp.capitalize
        sleep(2)
        puts "Hello #{name}, welcome to my CocktailCLI!"
        puts "--------------------------------------------"
        sleep(2)
        puts "(1)You can search by drink name!"
        sleep(2)
        puts "--------------------------------------------"
        puts "(2)You can search by letter!"
        sleep(2)
        puts "--------------------------------------------"
        puts "(3)You can search by ingredient!"
        puts "--------------------------------------------"
        sleep(2)
        puts "Which would you like to do, choose a number please...."
        choice = gets.chomp

    case choice
    when "1"
        puts "You chose to search by drink name..."
        puts "--------------------------------------------"
        puts "What drink recipe would you like to see?"
        #something here to make an object? drinks.rb?
        term = gets.chomp.downcase #<--- this?
        CocktailCLI::API.fetch(term)  #<---this?
    when "2"
        puts "You chose to search by letter..."
        puts "--------------------------------------------"
        puts "Please choose a letter ..."
        # can I put a case in a case? or should this be ?
        #something else to make an object
    when "3"
        puts "You chose to search by ingredient..."
        puts "--------------------------------------------"
        puts "Please enter an ingredient ..."
        # what about this?
    else 
        exit
    end


    end
end