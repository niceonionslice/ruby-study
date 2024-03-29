require "minitest/autorun"
# rubyを実行しているカレントディレクトリを起点にファイルを探す。
require "./FizzBuzz"
# ↓は現ファイルを起点にファイルを探しに行く
# require_relative "FizzBuzz"

class FizzBuzzTest < Minitest::Test
  def test_fizz_buzz
    assert_equal '1', fizz_buzz(1)
    assert_equal '2', fizz_buzz(2)
    assert_equal 'fizz', fizz_buzz(3)
    assert_equal '4', fizz_buzz(4)
    assert_equal 'buzz', fizz_buzz(5)
    assert_equal 'fizz', fizz_buzz(6)
    assert_equal '7', fizz_buzz(7)
    assert_equal 'fizzbuzz', fizz_buzz(15)
  end
end
