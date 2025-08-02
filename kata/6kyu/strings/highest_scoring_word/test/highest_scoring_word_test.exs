defmodule HighestScoringWordTest do
  use ExUnit.Case
  doctest HighestScoringWord

  @samples [
    {"man i need a taxi up to ubud", "taxi"},
    {"what time are we climbing up the volcano", "volcano"},
    {"take me to semynak", "semynak"},
    {"massage yes massage yes massage", "massage"},
    {"take two bintang and a dance please", "bintang"},
    {"aa b", "aa"},
    {"b aa", "b"},
    {"bb d", "bb"},
    {"d bb", "d"},
    {"aaa b", "aaa"}
  ]

  test "Sample test" do
    Enum.map(@samples, fn {input, output} ->
      assert HighestScoringWord.high(input) == output
    end)
  end

  test "Empty test" do
    assert HighestScoringWord.high("") == ""
  end
end
