
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
        
        CocktailCLI::Drink.all.each.with_index(1) do |d, index|
            puts "#{index}. #{d.drink}"
            puts "--------------------------------------------"
        end
    when "2"
        puts "You chose to search by letter..."
        puts "--------------------------------------------"
        puts "Please choose a letter ..."
        term = gets.chomp.downcase
        CocktailCLI::API.fetch_two(term)

        CocktailCLI::Drink.all.each.with_index(1) do |d, index|
            puts "#{index}. #{d.drink}"
            puts "--------------------------------------------"
        end
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