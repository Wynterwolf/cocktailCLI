class CocktailCLI::CLI

    def call 
        puts "Hello! Please enter your name..."
        name = gets.chomp.capitalize

        puts "Hello #{name}, welcome to my CocktailCLI!"
        puts "--------------------------------------------"

        puts "Would you like to search for a drink? (Y/N)"

        puts "--------------------------------------------"

        choice = gets.chomp.upcase

    case choice
    when "Y"
        puts "You chose to search by drink name..."
        puts "--------------------------------------------"
        puts "What drink recipe would you like to see? (Ex: Margarita)"

        term = gets.chomp.downcase
        CocktailCLI::API.fetch(term)
        
        CocktailCLI::Drink.all.each.with_index(1) do |d, index|
            puts "#{index}. #{d.drink}"
            puts "--------------------------------------------"
        end
            puts "Would you like to see more details on a specific drink?"
            puts "Please a number from the list above."
        
        term = gets.chomp.to_i
        index = term -1
        drink = CocktailCLI::Drink.all[index]
        # puts drink.instructions
        
        if term != index
            puts "That number was not listed, choose again."
            #return to case choice
        else
            puts drink.instructions 
            puts "--------------------------------------------"
            put "Would you like to search again?"
            #return to case choice
            

    end


    end
end

    # class NameError < StandardError
    # end

end