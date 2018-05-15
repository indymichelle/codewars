# Take 2 strings s1 and s2 including only letters from ato z. Return a
# new sorted string, the longest possible, containing distinct letters,
# each taken only once - coming from s1 or s2. #Examples: ``` a =
# "xyaabbbccccdefww" b = "xxxxyyyyabklmopq" longest(a, b) ->
# "abcdefklmopqwxy" a = "abcdefghijklmnopqrstuvwxyz" longest(a, a) ->
# "abcdefghijklmnopqrstuvwxyz" ```
# https://www.codewars.com/kata/two-to-
# one/train/ruby/5afb54441839f1b0bf00008d

require "test/unit"

def longest(a1, a2)
  a = a1+a2
  a.chars.sort.uniq.join
end


class TC_MyTest < Test::Unit::TestCase

  def test_correct_string_return
    assert_equal(longest("aretheyhere", "yestheyarehere"), "aehrsty")
    assert_equal(longest("loopingisfunbutdangerous", "lessdangerousthancoding"), "abcdefghilnoprstu")
    assert_equal(longest("inmanylanguages", "theresapairoffunctions"), "acefghilmnoprstuy")
  end

end
