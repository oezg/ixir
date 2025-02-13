defmodule AllInclusiveTest do
  use ExUnit.Case
  doctest AllInclusive

  defp testContainsAll(numtest, strng, arr, ans) do
    IO.puts("Test #{numtest}")
    assert AllInclusive.contain_all_rots(strng, arr) == ans
  end

  test "contain_all_rots" do
    testContainsAll(1, "", [], true)
    testContainsAll(2, "", ["bsjq", "qbsj"], true)
    testContainsAll(3, "bsjq", ["bsjq", "qbsj", "sjqb", "twZNsslC", "jqbs"], true)

    testContainsAll(
      4,
      "XjYABhR",
      [
        "TzYxlgfnhf",
        "yqVAuoLjMLy",
        "BhRXjYA",
        "YABhRXj",
        "hRXjYAB",
        "jYABhRX",
        "XjYABhR",
        "ABhRXjY"
      ],
      false
    )
  end
end
