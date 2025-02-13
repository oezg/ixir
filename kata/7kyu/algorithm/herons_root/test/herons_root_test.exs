defmodule HeronsRootTest do
  use ExUnit.Case
  doctest HeronsRoot

  defp testing(numtest, n, guess, ans) do
    IO.puts("Test #{numtest} \n")
    assert HeronsRoot.int_rac(n, guess) == ans
  end

  test "int_rac" do
    testing(1, 25, 1, 4)
    testing(2, 125_348, 300, 3)
  end
end
