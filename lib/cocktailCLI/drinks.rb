class CocktailCLI::Drink

    attr_accessor :drinks, :term
    
@@all = []

    def initialize(drinks)
    
        @term = term
        @drink = drink
        @@all << self
    end

    def self.all
        @@all
    end

end