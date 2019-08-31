require "minitest/autorun"

class SampleTest < Minitest::Test
  def test_sample
    # a と b が等しければパス
    assert_equal 'RUBY', 'ruby'.upcase
    # aが真であればパス
    assert true
    # bが偽であればパス
    refute false
  end
end
