class CocktailCLI::API

def self.fetch(term)
    key = "1"
    url = "https://www.thecocktaildb.com/api/json/v1/#{key}/search.php?s=#{term}"
    response = HTTParty.get(url)

    response["drinks"].each do |drink|
        #puts "------------------------------"
        
        drinks = drink["strDrink"]
        instructions = drink["strInstructions"]

        CocktailCLI::Drink.new(drinks, instructions)
        #sleep (2)

        binding.pry
    end
end
end
