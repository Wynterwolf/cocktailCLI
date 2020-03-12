class CocktailCLI::CLI

    def call 
        puts "Hello! Please enter your name..."
        name = gets.chomp.capitalize
        # sleep(2)
        puts "Hello #{name}, welcome to my CocktailCLI!"
        puts "--------------------------------------------"
        # sleep(2)
        puts "(1)You can search by drink name!"
        # sleep(2)
        puts "--------------------------------------------"
        # puts "(2)You can search by letter!"
        # # sleep(2)
        # puts "--------------------------------------------"
        # puts "(3)Learn about a particular alcohol!"
        # puts "--------------------------------------------"
        # sleep(2)
        puts "Which would you like to do, choose a number please...."
        choice = gets.chomp

    case choice
    when "1"
        puts "You chose to search by drink name..."
        puts "--------------------------------------------"
        puts "What drink recipe would you like to see?"

        term = gets.chomp.downcase
        CocktailCLI::API.fetch(term)
        
        CocktailCLI::Drink.all.each.with_index(1) do |d, index|
            puts "#{index}. #{d.drink}"
            puts "--------------------------------------------"
        end
            puts "Would you like to see more details on a specific drink?"
            puts "Please choose one from the list above."
        
        term = gets.chomp.downcase
        CocktailCLI::API.fetch(term) 







    # when "2"
    #     puts "You chose to search by letter..."
    #     puts "--------------------------------------------"
    #     puts "Please choose a letter ..."
    #     term = gets.chomp.downcase
    #     CocktailCLI::API.fetch_two(term)

    #     CocktailCLI::Drink.all.each.with_index(1) do |d, index|
    #         puts "#{index}. #{d.drink}"
    #         puts "--------------------------------------------"
    #     end
    # when "3"
    #     puts "You chose to research an alcohol..."
    #     puts "--------------------------------------------"
    #     puts "Please enter the name of the alochol ..."
    #     # what about this?
    #     term = gets.chomp.downcase
    #     CocktailCLI::API.fetch_three(term)
        

    #     # puts CocktailCLI::Alcohol.all
    #     # puts "--------------------------------------------"
    #     # binding.pry

    #     # CocktailCLI::Alcohol.all.each.with_index(1) do |d, index|
    #     #     puts "#{index}. #{alcohol[strDescription]}"
    #     #     puts "--------------------------------------------"
    #     # end

    #     CocktailCLI::Alcohol.each do |alcohol|
    #         puts "#{alcohol[strDescription]}"

    #     end
    # else 
        # exit
    end


    end
end