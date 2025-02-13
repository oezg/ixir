defmodule IntegersOnCartesianPlaneTest do
  use ExUnit.Case
  doctest IntegersOnCartesianPlane

  defp testing_sumin(numtest, k, ans) do
    IO.puts("Test #{numtest}")
    assert IntegersOnCartesianPlane.sumin(k) == ans
  end

  defp testing_sumax(numtest, k, ans) do
    IO.puts("Test #{numtest}")
    assert IntegersOnCartesianPlane.sumax(k) == ans
  end

  defp testing_sumsum(numtest, k, ans) do
    IO.puts("Test #{numtest}")
    assert IntegersOnCartesianPlane.sumsum(k) == ans
  end

  test "sumin, sumax, sumsum" do
    testing_sumin(1, 5, 55)
    testing_sumax(4, 8, 372)
    testing_sumsum(5, 8, 576)
  end
end
