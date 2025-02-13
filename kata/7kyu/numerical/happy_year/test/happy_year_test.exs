defmodule HappyYearTest do
  use ExUnit.Case
  doctest HappyYear

  defp testing(year, exp) do
    actual = HappyYear.next_happy_year(year)
    assert actual == exp, "Year: #{year}, expected: #{exp}, actual: #{actual}"
  end

  test "Fixed tests" do
    testing(1001, 1023)
    testing(1123, 1203)
    testing(2001, 2013)
    testing(2334, 2340)
    testing(3331, 3401)
    testing(1987, 2013)
    testing(5555, 5601)
    testing(7712, 7801)
    testing(8088, 8091)
    testing(8999, 9012)
  end
end
