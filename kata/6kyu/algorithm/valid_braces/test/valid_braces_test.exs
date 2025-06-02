defmodule ValidBracesTest do
  use ExUnit.Case
  doctest ValidBraces
  import ValidBraces, only: [valid_braces: 1]

  def expect_true(s) do
    assert(valid_braces(s), "Expected #{s} to be valid. Got false")
  end

  def expect_false(s) do
    assert(!valid_braces(s), "Expected #{s} to be invalid. Got true")
  end

  test "basic tests" do
    expect_true("()")
    expect_false("[(])")
  end
end
