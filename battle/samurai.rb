require_relative 'human'

class Samurai < Human

    def initialize
        @health = 200
    end

    def death_blow(obj)
        if obj.class.ancestors.include?(Human)
            obj.health == 0
            true
          else
            false
        end
    end

    def meditate
        @health == 200
    end

    private
        def how_many
        
            puts "there are      samurai's"
        end





end