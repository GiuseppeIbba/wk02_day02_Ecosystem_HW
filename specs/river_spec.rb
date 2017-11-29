require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')

class TestRiver < MiniTest::Test

  def setup()
    @fish9 = Fish.new("Namor")
    @fish8 = Fish.new("Fin")
    @fish7 = Fish.new("Nemo")
    @fish6 = Fish.new("Shang")
    @fish5 = Fish.new("Sindel")
    @fish4 = Fish.new("Janemba")
    @fish3 = Fish.new("Flipper")
    @fish2 = Fish.new("Akuma")
    @fish1 = Fish.new("Screech")
    @river = River.new("Amazon", [@fish1, @fish2, @fish3])
  end

  def test_river_has_a_name()
    assert_equal("Amazon", @river.name())
  end

  def test_add_fish()
    @river.add_fish(@fish4)
    assert_equal(4, @river.fish_count())
  end

  def test_add_three_fishes()
    @river.add_fish(@fish4)
    @river.add_fish(@fish5)
    @river.add_fish(@fish6)
    assert_equal(6, @river.fish_count())
  end

  def test_remove_fish()
    @river.add_fish(@fish7)
    @river.add_fish(@fish8)
    @river.remove_fish(@fish1)
    assert_equal(4, @river.fish_count())
  end




end
