defmodule WithdrawTest do
  use ExUnit.Case
  doctest Withdraw

  defp _test(testnum, val, sol) do
    IO.puts("Test #{testnum}")
    assert Withdraw.withdraw(val) == sol
  end

  test "It should work for basic tests" do
    _test(1, 40, [0, 0, 2])
    _test(2, 250, [2, 1, 0])
    _test(3, 260, [2, 0, 3])
    _test(4, 230, [1, 1, 4])
    _test(5, 60, [0, 0, 3])
  end
end
