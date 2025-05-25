defmodule LongestAlphabeticalSubstringTest do
  use ExUnit.Case
  doctest LongestAlphabeticalSubstring

  test "Basic Tests" do
    assert LongestAlphabeticalSubstring.longest("asd") == "as"
    assert LongestAlphabeticalSubstring.longest("nab") == "ab"
    assert LongestAlphabeticalSubstring.longest("abcdeapbcdef") == "abcde"
    assert LongestAlphabeticalSubstring.longest("asdfaaaabbbbcttavvfffffdf") == "aaaabbbbctt"
    assert LongestAlphabeticalSubstring.longest("asdfbyfgiklag") == "fgikl"
    assert LongestAlphabeticalSubstring.longest("z") == "z"
    assert LongestAlphabeticalSubstring.longest("zyba") == "z"
  end
end
