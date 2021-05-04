# encoding: UTF-8
# frozen_string_literal: true

require_relative "helper"

class ArrayTweaksTest < Test::Unit::TestCase
  def test_drop_last
    x = [1, 2, 3, 4]
    y = x.drop_last
    assert_equal [1, 2, 3], y
    assert_not_same x, y

    x = [1, 2, 3, 4]
    assert_equal 4, x.drop_last!
    assert_equal [1, 2, 3], x
    assert_same x, x

    x = []
    assert_equal [], x.drop_last

    x = []
    assert_nil x.drop_last!
  end

  def test_each_with_index_and_size
    x_outer = 1
    i_outer = 0
    (1..5).to_a.each_with_index_and_size do |x, i, s|
      assert_equal x_outer, x
      assert_equal i_outer, i
      assert_equal 5, s
      x_outer += 1
      i_outer += 1
    end
  end

  def test_each_after
    array = []
    (1..5).to_a.each_after(3) { |x| array << x }
    assert_equal [4, 5], array

    array = []
    (1..5).to_a.each_after(0) { |x| array << x }
    assert_equal [1, 2, 3, 4, 5], array
  end

  def test_map_key
    assert_equal ["a", "b", nil, "c"], [{ k: "a" }, { k: "b" }, {}, { k: "c" }].map_key(:k)
  end

  def test_not_in
    assert_true "d".not_in? ["a", "b", nil, "c"]
    assert_false "b".not_in? ["a", "b", nil, "c"]
  end
end
