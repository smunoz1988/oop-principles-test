require "./animal.rb"
require "./food.rb"

class Dog < Animal
    def initialize(color, name = "Unknown")
        super("dog", 4, name)
        @color = color
        @liked_food = DogFood.new()
    end

    def bring_a_stick
        "Here is a stick"
    end

    def speak
        "Woof"
    end

end