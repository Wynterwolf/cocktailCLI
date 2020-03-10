class CocktailCLI::Drink

    attr_accessor :drinks, :term
    
@@all = []

    def initialize(drinks, instructions)
    
        @term = term
        @drinks = drinks
        @@all << self
    end

    def self.all
        @@all
    end

end