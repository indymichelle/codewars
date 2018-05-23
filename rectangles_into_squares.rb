# Given a "true" rectangle, return the smallest amount of squares contained within.
# You will return an array with the size of each of the squares.

require "test/unit"

def sqInRect(lng, wdth)

  return nil if lng == wdth

  square_array = []

  shortest,longest = [lng,wdth].sort

  while shortest > 0
    square_array.push(shortest)
    longest,shortest = shortest, longest-shortest
    shortest,longest = [shortest,longest].sort
  end
  square_array

end


class TC_MyTest < Test::Unit::TestCase

  def test_things
    assert_equal sqInRect(5,5), nil
    assert_equal sqInRect(5, 3), [3, 2, 1, 1]
  end

end


