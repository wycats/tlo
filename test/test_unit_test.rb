class TestTLo < MiniTest::Unit::TestCase
  def setup
    @bool = true
  end

  def before_teardown
    @bool = false
  end

  def test_ohai
    assert_equal @bool, false
  end

  def test_kthxbai
    assert_equal @bool, true
  end
end

