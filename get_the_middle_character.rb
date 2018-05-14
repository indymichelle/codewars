# https://www.codewars.com/kata/56747fd5cb988479af000028

# You are going to be given a word. Your job is to return the middle character
# of the word.  If the word's length is odd, return the middle character. If
# the word's length is even, return the middle 2 characters.

require "test/unit"

def get_middle(s)
  word_array = s.split(//)

  if (s.length % 2) == 0
    mid_spot = (s.length / 2)
    middle = word_array[mid_spot - 1] + word_array[mid_spot]

  else
    mid_spot = (s.length / 2).floor
    middle = word_array[mid_spot]
  end

end


class TC_MyTest < Test::Unit::TestCase

  def test_things

    assert_equal get_middle("test"), "es"

    assert_equal get_middle("testing"), "t"

    assert_equal get_middle("middle"), "dd"

    assert_equal get_middle("A"), "A"
  end

end
