defmodule CharacterWithLongestRepetitionTest do
  use ExUnit.Case
  doctest CharacterWithLongestRepetition

  test "Sample tests" do
    Enum.each(
      [
        {"aaaabb", {"a", 4}},
        {"bbbaaabaaaa", {"a", 4}},
        {"cbdeuuu900", {"u", 3}},
        {"abbbbb", {"b", 5}},
        {"aabb", {"a", 2}},
        {"ba", {"b", 1}},
        {"", {"", 0}},
        {"aaabbcccddd", {"a", 3}}
      ],
      fn {s, exp} -> assert CharacterWithLongestRepetition.longest_repetition(s) == exp end
    )
  end
end
