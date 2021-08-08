class MathDojo

    attr_accessor :sum

    def initialize
      @sum = 0
    end
    

    def add(*params)
      @sum += params.flatten.reduce(0, :+)
      self
    end


    def subtract(*params)
      @sum -= params.flatten.reduce(0, :+)
      self
    end

end


challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).sum # => 4
puts challenge1
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).sum # => 23.15
puts challenge2