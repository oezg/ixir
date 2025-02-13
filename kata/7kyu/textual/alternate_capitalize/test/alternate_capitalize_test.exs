defmodule AlternateCapitalizeTest do
  use ExUnit.Case
  doctest AlternateCapitalize

  def run_test(s, sol), do: assert(AlternateCapitalize.capitalize(s) == sol)

  describe "Basic tests" do
    test "abcdef", do: run_test("abcdef", ["AbCdEf", "aBcDeF"])
    test "codewars", do: run_test("codewars", ["CoDeWaRs", "cOdEwArS"])
    test "abracadabra", do: run_test("abracadabra", ["AbRaCaDaBrA", "aBrAcAdAbRa"])
    test "codewarriors", do: run_test("codewarriors", ["CoDeWaRrIoRs", "cOdEwArRiOrS"])
  end
end
