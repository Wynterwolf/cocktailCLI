
class CocktailCLI::CLI

    def call 
        puts "This is the drink recipe CLI!"
        puts "What drink recipe would you like to see?"

        input = gets.chomp.downcase
        CocktailCLI::API.fetch(input)
    end
end