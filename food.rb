class NoFood
    def is_like?(food)
        false
    end
end

class DogFood
    def is_like?(food)
        ["meat", "vegetable", "fruit"].member?(food)
    end
end
