require_relative 'mammal'

class Lion < Mammal

    def initialize
    @health = 170

    end

    def fly
        @health -=10
        # puts @health
        self
    end

    def attack_town
        @health -=50
        # puts @health
        self
    end

    def eat_humans
        @health +=20
        # puts @health
        self
    end

    def display_health
        puts "This is a lion"
        super
    end

end

lion = Lion.new
#lion.fly
#lion.attack_town
#lion.eat_humans
lion.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health
