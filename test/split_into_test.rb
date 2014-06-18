require 'test_helper'

class SplitIntoTest < Minitest::Test
  def test_integer
    assert_equal [],                    SplitInto.split(10,0)
    assert_equal [10],                  SplitInto.split(10,1)
    assert_equal [5,5],                 SplitInto.split(10,2)
    assert_equal [3,3,4],               SplitInto.split(10,3)
    assert_equal [2,2,3,3],             SplitInto.split(10,4)
    assert_equal [2,2,2,2,2],           SplitInto.split(10,5)
    assert_equal [1,1,2,2,2,2],         SplitInto.split(10,6)
    assert_equal [1,1,1,1,2,2,2],       SplitInto.split(10,7)
    assert_equal [1,1,1,1,1,1,2,2],     SplitInto.split(10,8)
    assert_equal [1,1,1,1,1,1,1,1,2],   SplitInto.split(10,9)
    assert_equal [1,1,1,1,1,1,1,1,1,1], SplitInto.split(10,10)
  end

  def test_exceptions
    assert_raises(SplitInto::SplitError) { SplitInto.split(10,-1) }
    assert_raises(SplitInto::SplitError) { SplitInto.split(10,11) } 
    assert_raises(SplitInto::SplitError) { SplitInto.split(10.5,5) } 
    assert_raises(SplitInto::SplitError) { SplitInto.split(10,5.5) } 
  end
end
