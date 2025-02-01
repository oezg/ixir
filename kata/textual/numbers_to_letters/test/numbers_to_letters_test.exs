defmodule NumbersToLettersTest do
  use ExUnit.Case
  doctest NumbersToLetters

  test "Basic tests" do
    example_tests = [
      {["24", "12", "23", "22", "4", "26", "9", "8"], "codewars"},
      {["25", "7", "8", "4", "14", "23", "8", "25", "23", "29", "16", "16", "4"],
       "btswmdsbd kkw"},
      {["4", "24"], "wc"},
      {["12"], "o"},
      {["12", "28", "25", "21", "25", "7", "11", "22", "15"], "o?bfbtpel"}
    ]

    for {r, sol} <- example_tests, do: assert(NumbersToLetters.switcher(r) == sol)
  end
end
