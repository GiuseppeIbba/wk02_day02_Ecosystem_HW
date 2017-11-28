class River

  attr_reader(:name)

    def initialize(name, fishes)
      @name = name
      @fishes = fishes
    end

    def river_has_a_name()
       @river.name()
    end

    def fish_count()
      return @fishes.length()
    end
    #
    # def lose_fish(fish)
    #   return @fishes.pop(fish)
    # end





end
