require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')

class TestRiver < MiniTest::Test

  def setup()
    @river = River.new("Amazon")
  end

  def test_river_has_a_name()
    assert_equal("Amazon", @river.name())
  end

end
