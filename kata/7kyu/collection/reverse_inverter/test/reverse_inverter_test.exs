defmodule ReverseInverterTest do
  use ExUnit.Case
  doctest ReverseInverter

  test "Basic tests" do
    assert ReverseInverter.reverse_invert([]) == []
    assert ReverseInverter.reverse_invert([1, 2, 3, 4, 5]) == [-1, -2, -3, -4, -5]
    assert ReverseInverter.reverse_invert([-10]) == [1]
    assert ReverseInverter.reverse_invert([-9, -18, 99]) == [9, 81, -99]

    assert ReverseInverter.reverse_invert([1, 12, 'a', 3.4, 87, 99.9, -42, 50, 5.6]) == [
             -1,
             -21,
             -78,
             24,
             -5
           ]
  end
end
