class SuperHeros
    attr_reader :name, :power, :biography

    @@super_heros= []

    def initialize (params)
        @name = params[:name]
        @power = params[:power]
        @biography = params[:biography]
        @@super_heros << self
    end
    
    def self.all
        @@super_heros
    end
    
end