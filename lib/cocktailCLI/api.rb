class CocktailCLI::API

def self.fetch(term)
    key = "1"
    url = "https://www.thecocktaildb.com/api/json/v1/#{key}/search.php?s=#{term}"
    response = HTTParty.get(url)

    response["drinks"].each do |drink|
        drink = drink["strDrink"]

        CocktailCLI::Drink.new(drink)


        #binding.pry
    end
end
end
