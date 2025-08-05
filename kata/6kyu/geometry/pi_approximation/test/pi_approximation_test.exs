defmodule PiApproximationTest do
  use ExUnit.Case
  doctest PiApproximation

  def testPiApprox(nb, epsilon, ans) do
    IO.puts("Test #{nb}")
    assert PiApproximation.iter_pi(epsilon) == ans
  end

  test "iter_pi" do
    testPiApprox(1, 0.1, [10, 3.0418396189])
    testPiApprox(2, 0.01, [100, 3.1315929035])
  end
end
