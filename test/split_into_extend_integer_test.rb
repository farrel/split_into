require 'test_helper'

class SplitIntoIncludedTest < Minitest::Test
  def test_integer
    assert_equal [],                    10.split_into(0)
    assert_equal [10],                  10.split_into(1)
    assert_equal [5,5],                 10.split_into(2)
    assert_equal [3,3,4],               10.split_into(3)
    assert_equal [2,2,3,3],             10.split_into(4)
    assert_equal [2,2,2,2,2],           10.split_into(5)
    assert_equal [1,1,2,2,2,2],         10.split_into(6)
    assert_equal [1,1,1,1,2,2,2],       10.split_into(7)
    assert_equal [1,1,1,1,1,1,2,2],     10.split_into(8)
    assert_equal [1,1,1,1,1,1,1,1,2],   10.split_into(9)
    assert_equal [1,1,1,1,1,1,1,1,1,1], 10.split_into(10)
  end

  def test_exceptions
    assert_raises(SplitInto::SplitError) { 10.split_into(-1) } 
    assert_raises(SplitInto::SplitError) { 10.split_into(11) } 
    assert_raises(SplitInto::SplitError) { 10.split_into(5.5) } 
  end
end

