# Jaden Smith, the son of Will Smith, is the star of films such as The
# Karate Kid (2010) and After Earth (2013). Jaden is also known for some
# of his philosophy that he delivers via Twitter. When writing on
# Twitter, he is known for almost always capitalizing every word.

# Your task is to convert strings to how they would be written by Jaden
# Smith. The strings are actual quotes from Jaden Smith, but #they are
# not capitalized in the same way he originally typed them.

# https://www.codewars.com/kata/jaden-casing-strings/train/ruby/5b0de51c4bf716c038000111

require "test/unit"

class String
  def toJadenCase
    word_array = split(/ /)
    word_array.each do |x|
      x.capitalize!
    end
    word_array.join(" ")
  end
end

class TC_MyTest < Test::Unit::TestCase

  def test_things
    str = "How can mirrors be real if our eyes aren't real"
    assert_equal (str.toJadenCase), "How Can Mirrors Be Real If Our Eyes Aren't Real"
  end

end
