defmodule ValidateCreditCardNumberTest do
  use ExUnit.Case
  doctest ValidateCreditCardNumber

  test "123" do
    assert ValidateCreditCardNumber.validate(123) == false
  end

  test "1" do
    assert ValidateCreditCardNumber.validate(1) == false
  end

  test "2121" do
    assert ValidateCreditCardNumber.validate(2121) == true
  end

  test "1230" do
    assert ValidateCreditCardNumber.validate(1230) == true
  end
end
