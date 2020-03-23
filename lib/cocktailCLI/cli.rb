class CocktailCLI::CLI

    def call 
        puts "Hello! Please enter your name..."
        name = gets.chomp.capitalize

        puts "Hello #{name}, welcome to my CocktailCLI!"
        puts "--------------------------------------------"

        puts "Would you like to search for a drink? (Y/N)"

        puts "--------------------------------------------"

        @choice = gets.chomp.upcase

    while @choice == "Y"
        puts "You chose to search by drink name..."
        puts "--------------------------------------------"
        puts "What drink recipe would you like to see? (Ex: Margarita)"

        term = gets.chomp.downcase
        CocktailCLI::API.fetch(term)
        choices
        

    end
end
def choices
    display_drinks

    puts "Would you like to see more details on a specific drink?"
    puts "Please choose a number from the list above."

term = gets.chomp.to_i
index = term -1
if term > 0 && term <= CocktailCLI::Drink.all.length
    drink = CocktailCLI::Drink.all[index]

    puts drink.instructions 
    puts "--------------------------------------------"
    puts "Would you like to search again?"

    @choices = gets.chomp.upcase
    if @choices == "N"
        goodbye
    end
    CocktailCLI::Drink.all.clear
else
    puts "That number was not listed, choose again."
    choices
end
end
def goodbye
puts "Thanks for playing"
exit
end
    def display_drinks
        
        CocktailCLI::Drink.all.each.with_index(1) do |d, index|
        puts "#{index}. #{d.drink}"
        puts "--------------------------------------------"
    end
end


    def no_index
        if term != index
            puts "That number was not listed, choose again."
            #return to ? 
            
        end
    end
end