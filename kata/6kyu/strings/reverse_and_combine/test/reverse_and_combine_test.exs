defmodule ReverseAndCombineTest do
  use ExUnit.Case
  doctest ReverseAndCombine

  def do_test(s, sol), do: assert(ReverseAndCombine.reverse_and_combine_text(s) == sol)

  test "example 1" do
    do_test("abc def", "cbafed")
  end

  test "example 2" do
    do_test("abc def ghi jkl", "defabcjklghi")
  end

  test "example 3" do
    do_test("dfghrtcbafed", "dfghrtcbafed")
  end

  test "example 4" do
    do_test(
      "234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44",
      "trzwqfdstrteettr45hh4325543544hjhjh21lllll"
    )
  end

  test "example 5" do
    do_test("sdfsdf wee sdffg 342234 ftt", "gffds432243fdsfdseewttf")
  end
end
