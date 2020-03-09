class CocktailCLI::API

def self.fetch(term)
    key = "1"
    url = "https://www.thecocktaildb.com/api/json/v1/#{key}/search.php?s=#{term}"
    response = HTTParty.get(url)

    response["drinks"].each do |d|
         #puts what here? 
    binding.pry
    end
end
end
