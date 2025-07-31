defmodule DisguisedSequence1Test do
  use ExUnit.Case
  doctest DisguisedSequence1

  defp testing(numtest, num, ans) do
    IO.puts("Test #{numtest}")
    assert DisguisedSequence1.fcn(num) == ans
  end

  test "nb_dig" do
    testing(1, 17, 131_072)
    testing(2, 21, 2_097_152)
    testing(3, 14, 16384)
    testing(4, 43, 8_796_093_022_208)
    testing(5, 19, 524_288)
  end
end
