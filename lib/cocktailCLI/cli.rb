
class CocktailCLI::CLI

    def call 
        puts "Hello! Please enter your name..."
        name = gets.chomp.capitalize
        sleep(2)
        puts "Hello #{name}, welcome to my CocktailCLI!"
        puts "--------------------------------------------"
        sleep(2)
        puts "You can search by drink name!"
        sleep(2)
        puts "--------------------------------------------"
        puts "You can search by letter!"
        sleep(2)
        puts "--------------------------------------------"
        puts "You can search by ingredient!"
        puts "--------------------------------------------"
        sleep(2)
        puts "You chose to search by drink name..."
        puts "--------------------------------------------"
        puts "What drink recipe would you like to see?"

        term = gets.chomp.downcase
        CocktailCLI::API.fetch(term)
    end
end