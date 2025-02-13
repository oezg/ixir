defmodule SumOfPowersOf2Test do
  use ExUnit.Case
  doctest SumOfPowersOf2

  defp testing(n, exp) do
    actual = SumOfPowersOf2.powers(n)

    assert actual == exp, """
    Given number #{n}
    Expected     #{inspect(exp, charlists: :as_lists)}
    Got          #{inspect(actual, charlists: :as_lists)}
    """
  end

  test "examples" do
    testing(1, [1])
    testing(2, [2])
    testing(6, [2, 4])
  end
end
