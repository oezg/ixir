defmodule TextingWithOldPhoneTest do
  use ExUnit.Case
  doctest TextingWithOldPhone

  test "basic tests" do
    assert TextingWithOldPhone.send_message("Def Con 1!") == "#3#33 3330#222#666 6601-1111"
    assert TextingWithOldPhone.send_message("A-z") == "#2**#9999"
    assert TextingWithOldPhone.send_message("hey") == "4433999"
    assert TextingWithOldPhone.send_message("one two three") == "666 6633089666084477733 33"

    assert TextingWithOldPhone.send_message("Big thanks for checking out my kata") ==
             "#22#444 4084426655777703336667770222443322255444664066688 806999055282"
  end
end
