require 'test_helper'

class GroupD2016GemTest < Minitest::Test
  def setup
      @sorter = ::GroupD2016Gem::Sorter.new
  end
  def test_that_it_has_a_version_number
    refute_nil ::GroupD2016Gem::VERSION
  end

  def test_merge_sort
    assert_equal([-21, -3, 0, 1, 4, 10, 10000],	@sorter.merge_sort([0, -3, 10, 1, 4, 10000, -21]), 'merge sort')
  end
  def test_bubble_sort
    assert_equal([-5, -2, 0, 1, 2, 3, 4, 6, 20000],@sorter.bubble_sort([-2, -5, 6, 1, 0, 3, 2, 4, 20000]), 'bubble_sort')
  end
  def test_quick_sort
    assert_equal([-21, -3, 0, 1, 4, 10, 10000],@sorter.quick_sort([0, -3, 10, 1, 4, 10000, -21]), 'quick sort')
  end
end
