class CocktailCLI::Drink

    attr_accessor :drink
    
@@all = []

    def initialize(drink)
    
        @drink = drink
        @@all << self
    end

    def self.all
        @@all
    end

end