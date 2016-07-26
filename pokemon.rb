class Pokemon

    attr_reader :name, :cp

    def initialize(name, cp=0)
      @name=name.capitalize
      @cp=cp
    end

    def power_up(pow)
      @cp+=pow.to_i
    end

    def power_down(pow)
      @cp-=pow.to_i
    end

    def info
      "#{@name}-#{@cp}"
    end

end

p=Pokemon.new 'Bulbazaur', 20
puts p.name
puts p.cp
puts p.power_up 100
puts p.power_down 10
puts p.info
