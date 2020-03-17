class CocktailCLI::Drink

    attr_accessor :drink, :instructions
    
@@all = []

    def initialize(drink, instructions)
        @instructions = instructions
        @drink = drink
        @@all << self
    end

    def self.all
        @@all
    end

end