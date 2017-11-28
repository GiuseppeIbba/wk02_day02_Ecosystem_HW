class Fish


attr_reader(:name)

  def initialize(name)
    @name = name
  end

  def fish_has_a_name()
    p @fish.name()
  end

end
