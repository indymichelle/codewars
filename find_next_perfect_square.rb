# Return the next square if sq is a perfect square, -1 otherwise
# https://www.codewars.com/kata/find-the-next-perfect-square/train/ruby/

require "test/unit"

def find_next_square(sq)
  root =  Math.sqrt(sq)
    if root % 1 == 0
      a = root + 1
      a*a
    else
      -1
    end
end

class TC_MyTest < Test::Unit::TestCase

  def tes_returns_next_square_for_perfect_squares
    assert_equal sfind_next_square(121), 144
    assert_equal find_next_square(625), 676
    assert_equal sfind_next_square(319225), 320356
    assert_equal find_next_square(15241383936), 15241630849
  end

  def test_returns_neg_one_for_non_perfect_square_numbers
    assert_equal find_next_square(155), -1
    assert_equal find_next_square(342786627), -1
  end

end
