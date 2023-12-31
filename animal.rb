require "./remover.rb"
require "./food.rb"

class Animal
    attr_accessor :owner, :visits

    def initialize(type, number_of_legs, name = "Unknown")
        @id = Random.rand(1..1000)
        @name = name
        @number_of_legs = number_of_legs
        @type = type
        @liked_food = NoFood.new()
        @visits = []
    end

    attr_reader :type, :number_of_legs, :id

    attr_accessor :name

    def owner=(owner)
        @owner = owner
        owner.animals.push(self) unless owner.animals.include?(self)
    end

    def speak
        "Grrrr"
    end

    def remove_leg
        remover = Remover.new()
        @number_of_legs = remover.decrease(@number_of_legs)
    end

    def likes_food?(food)
        @liked_food.is_like?(food)
    end
end