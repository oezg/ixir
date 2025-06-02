defmodule ReverseOrRotateTest do
  use ExUnit.Case
  doctest ReverseOrRotate

  def testing(numtest, s, sz, ans) do
    IO.puts("Test #{numtest}")
    assert ReverseOrRotate.revrot(s, sz) == ans
  end

  test "revrot" do
    testing(1, "1234", 0, "")
    testing(2, "", 0, "")
    testing(3, "1234", 5, "")
    s = "733049910872815764"
    testing(4, s, 5, "330479108928157")
  end
end
