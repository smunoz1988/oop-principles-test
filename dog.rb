require "./animal.rb"

class Dog < Animal
    def initialize(color, name = "Unknown")
        super("dog", 4, name)
        @color = color
    end

    def bring_a_stick
        "Here is a stick"
    end

    def speak
        "Woof"
    end

end