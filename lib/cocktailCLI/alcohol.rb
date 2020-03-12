class CocktailCLI::Alcohol

    attr_accessor :alcohol
    
@@all = []

    def initialize(alcohol)
    
        @alcohol = alcohol
        @@all << self
    end

    def self.all
        @@all
    end

end