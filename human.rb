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
  


  
  


