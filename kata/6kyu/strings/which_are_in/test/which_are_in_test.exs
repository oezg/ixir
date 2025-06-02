defmodule WhichAreInTest do
  use ExUnit.Case
  doctest WhichAreIn

  def dotest(numtest, array1, array2, ans) do
    IO.puts("Test #{numtest}")
    assert WhichAreIn.in_array(array1, array2) == ans
  end

  test "in_array" do
    dotest(1, ["arp", "live", "strong"], ["lively", "alive", "harp", "sharp", "armstrong"], [
      "arp",
      "live",
      "strong"
    ])

    dotest(2, ["xyz", "live", "strong"], ["lively", "alive", "harp", "sharp", "armstrong"], [
      "live",
      "strong"
    ])
  end
end
