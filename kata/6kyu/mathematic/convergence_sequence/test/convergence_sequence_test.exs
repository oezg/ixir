defmodule ConvergenceSequenceTest do
  use ExUnit.Case
  doctest ConvergenceSequence

  def dotest(x, y, eps, exp) do
    merr = 1.0
    IO.puts("Testing : #{x} #{y} #{eps}")
    act = ConvergenceSequence.f(x, y, eps)
    IO.puts("act: #{act}")
    IO.puts("exp: #{exp}")
    inrange = abs(act - exp) <= merr

    if inrange == false do
      IO.puts("Expected value must be #{exp} but was #{act}")
    end

    assert inrange == true
    IO.puts("#")
  end

  test "f" do
    dotest(0.64, 0.75, 1.0e-12, 1952)
    dotest(0.3, 0.5, 1.0e-4, 17)
    dotest(30.0, 50.0, 1.0e-4, -1)
  end
end
