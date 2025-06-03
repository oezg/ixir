defmodule BackspacesInStringTest do
  use ExUnit.Case
  doctest BackspacesInString

  test "Sample tests" do
    assert BackspacesInString.clean_string("abc#d##c") == "ac"
    assert BackspacesInString.clean_string("abc####d##c#") == ""
    assert BackspacesInString.clean_string("#######") == ""
    assert BackspacesInString.clean_string("") == ""
  end
end
