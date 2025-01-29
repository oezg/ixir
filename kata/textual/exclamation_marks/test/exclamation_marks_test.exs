defmodule ExclamationMarksTest do
  use ExUnit.Case
  doctest ExclamationMarks

  test "Basic tests" do
    assert ExclamationMarks.remove("Hi!") == "Hi!"
    assert ExclamationMarks.remove("Hi!!!") == "Hi!!!"
    assert ExclamationMarks.remove("!Hi") == "Hi"
    assert ExclamationMarks.remove("!Hi!") == "Hi!"
    assert ExclamationMarks.remove("Hi! Hi!") == "Hi Hi!"
    assert ExclamationMarks.remove("Hi") == "Hi"
  end
end
