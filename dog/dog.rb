require_relative 'mammal'

class Dog < Mammal

    def pet
        @health += 5
        # puts increase
        self
    end

    def walk
        @health += 1
        # puts increase
        self
    end

    def run
        @health -= 10
        # puts decrease
        self
    end

end 

dog = Dog.new
dog.display_health
dog.walk.walk.walk.run.run.pet.display_health