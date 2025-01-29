defmodule ConsecutiveDucksTest do
  use ExUnit.Case
  doctest ConsecutiveDucks

  defp testing(n, exp) do
    actual = ConsecutiveDucks.consecutive_ducks(n)
    assert actual == exp, "Given number #{n}, expected #{exp}, got #{actual}"
  end

  test "Check Small Values" do
    testing(69, true)
    testing(8, false)
    testing(57, true)
    testing(6, true)
    testing(13, true)
    testing(16, false)
    testing(91, true)
    testing(75, true)
    testing(38, true)
    testing(25, true)
    testing(32, false)
    testing(65, true)
    testing(13, true)
    testing(16, false)
    testing(99, true)
  end

  test "Check Medium Values" do
    testing(522, true)
    testing(974, true)
    testing(755, true)
    testing(512, false)
    testing(739, true)
    testing(1006, true)
    testing(838, true)
    testing(1092, true)
    testing(727, true)
    testing(648, true)
    testing(1024, false)
    testing(851, true)
    testing(541, true)
    testing(1011, true)
    testing(822, true)
  end

  test "Check Large Values" do
    testing(382_131, true)
    testing(118_070, true)
    testing(17209, true)
    testing(32768, false)
    testing(161_997, true)
    testing(400_779, true)
    testing(198_331, true)
    testing(325_482, true)
    testing(88441, true)
    testing(648, true)
    testing(65536, false)
    testing(323_744, true)
    testing(183_540, true)
    testing(65271, true)
    testing(5_263_987, true)
  end
end
