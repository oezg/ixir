defmodule FindTheDivisorsTest do
  use ExUnit.Case
  doctest FindTheDivisors
  import FindTheDivisors, only: [divisors: 1]

  test "example tests" do
    assert divisors(15) == [3, 5]
    assert divisors(12) == [2, 3, 4, 6]
    assert divisors(13) == "13 is prime"
  end
end
