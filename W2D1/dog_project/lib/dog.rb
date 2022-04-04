class Dog
    def initialize(name,breed,age,bark,favorite_foods)
        @name,@breed,@age,@bark,@favorite_foods = name,breed,age,bark,favorite_foods
    end

    def name()
        @name
    end

    def breed()
        @breed
    end
    
    def age()
        @age
    end

    def age=(n)
        @age=n
    end

    def bark()
        @age>3? @bark.upcase : @bark.downcase
    end

    def favorite_foods()
        @favorite_foods
    end

    def favorite_food?(food)
        @favorite_foods.any?{|f|food.casecmp?(f)}
    end
end
