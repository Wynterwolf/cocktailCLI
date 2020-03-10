class CocktailCLI::Term

    attr_accessor :term
    
@@all = []

    def initialize(term)
    
        @term = term
        @drinks = drinks
        @@all << self
    end

    def self.all
        @@all
    end

end