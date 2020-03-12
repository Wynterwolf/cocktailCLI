class CocktailCLI::API

def self.fetch(term)
    key = "1"
    url = "https://www.thecocktaildb.com/api/json/v1/#{key}/search.php?s=#{term}"
    response = HTTParty.get(url)

    response["drinks"].each do |drink|
        drink = drink["strDrink"]
        puts drink["strDrink"]
        CocktailCLI::Drink.new(drink)


        #binding.pry
    end
end

def self.fetch_two(term)
    key = "1"
    url = "https://www.thecocktaildb.com/api/json/v1/#{key}/search.php?f=#{term}"
    response = HTTParty.get(url)

    response["drinks"].each do |drink|
        drink = drink["strDrink"]
        puts drink["strDrink"]
        CocktailCLI::Drink.new(drink)
    end
end

# def self.fetch_three(term)
#     key = "1"
#     url = "https://www.thecocktaildb.com/api/json/v1/#{key}/search.php?i=#{term}"
#     response = HTTParty.get(url)

#      response.each do |alcohol|
#          alcohol = alcohol["strDescription"]
    
#     CocktailCLI::Alcohol.new(term)

#      end
# end

end
