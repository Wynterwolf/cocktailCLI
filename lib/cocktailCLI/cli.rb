
class CocktailCLI::CLI

    def call 
        puts "Hello! Please enter your name..."
        name = gets.chomp.capitalize
        sleep(2)
        puts "Hello #{name}, welcome to my CocktailCLI!"
        sleep(2)
        puts "You can search by drink name!"
        puts "You can search by letter!"
        puts "You can search by ingredient!"
        sleep(2)
        puts "You chose to search by drink name..."
        puts "What drink recipe would you like to see?"

        term = gets.chomp.downcase
        CocktailCLI::API.fetch(term)
    end
end