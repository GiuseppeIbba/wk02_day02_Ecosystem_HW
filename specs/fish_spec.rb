require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')

class TestFish < MiniTest::Test

  def setup()
    @fish = Fish.new("Nemo")
  end

  def test_can_create_fish()
    assert_equal(Fish, @fish.class())
  end

def test_fish_has_a_name()
  assert_equal("Nemo", @fish.name())
end

end
