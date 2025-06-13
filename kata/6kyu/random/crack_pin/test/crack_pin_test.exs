defmodule CrackPinTest do
  use ExUnit.Case
  doctest CrackPin

  test "simple test" do
    result = CrackPin.crack("827ccb0eea8a706c4c34a16891f84e7b")
    assert result == "12345"
  end

  test "harder test" do
    result = CrackPin.crack("86aa400b65433b608a9db30070ec60cd")
    assert result == "00078"
  end
end
