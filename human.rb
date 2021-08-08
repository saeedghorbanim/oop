class Human
    attr_accessor :strength, :intelligence, :health, :stealth
    def initialize
      @strength = 3
      @intelligence = 3
      @stealth = 3
      @health = 100
    end


    def attack(man)
      if man.class.ancestors.include?(Human)
        man.health -= 15
        true
      else
        false
      end
    end
  end
  

man_one = Human.new
man_two = Human.new
puts man_one.attack(man_two)
puts man_one.attack("Not a Human")
puts man_two.health

  
  


