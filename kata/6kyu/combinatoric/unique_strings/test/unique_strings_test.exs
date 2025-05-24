defmodule UniqueStringsTest do
  use ExUnit.Case
  doctest UniqueStrings

  defp testing(numtest, string, ans) do
    IO.puts("Test #{numtest}")
    assert UniqueStrings.uniq_count(string) == ans
  end

  test "uniq_count" do
    testing(1, "AAA", 1)
    testing(2, "ABC", 6)
    testing(3, "ABA", 3)
    testing(4, "ASTON", 120)
    testing(5, "BEST", 24)
  end
end
