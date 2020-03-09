#search terms

class CocktailCLI::Term

    attr_accessor :term
    
@@all = []

    def initialize(margarita)
    
        @term = term
        @drink = drink
        @@all << self
    end

    def self.all
        @@all
    end

end