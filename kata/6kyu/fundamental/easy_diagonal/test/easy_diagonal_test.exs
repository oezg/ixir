defmodule EasyDiagonalTest do
  use ExUnit.Case
  doctest EasyDiagonal

  def testing(numtest, n, p, ans) do
    IO.puts("Test #{numtest}")
    assert EasyDiagonal.diagonal(n, p) == ans
  end

  test "diagonal" do
    testing(1, 20, 3, 5985)
    testing(2, 20, 4, 20349)
    testing(3, 20, 5, 54264)
  end
end
