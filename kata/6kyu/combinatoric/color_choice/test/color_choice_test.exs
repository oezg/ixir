defmodule ColorChoiceTest do
  use ExUnit.Case
  doctest ColorChoice

  def testing(numtest, k, p, ans) do
    IO.puts("Test #{numtest}")
    assert ColorChoice.checkchoose(k, p) == ans
  end

  test "checkchoose" do
    testing(1, 6, 4, 2)
    testing(2, 4, 4, 1)
    testing(3, 4, 2, -1)
    testing(4, 35, 7, 3)
    testing(5, 36, 7, -1)
  end
end
