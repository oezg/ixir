defmodule KillKthBitTest do
  use ExUnit.Case
  doctest KillKthBit

  import KillKthBit

  test "test kill_kth_bit/2 works with static data" do
    assert kill_kth_bit(37, 3) == 33
    assert kill_kth_bit(37, 4) == 37
    assert kill_kth_bit(0, 4) == 0
    assert kill_kth_bit(2_147_483_647, 16) == 2_147_450_879
    assert kill_kth_bit(374_823_748, 13) == 374_819_652
    assert kill_kth_bit(1_084_197_039, 15) == 1_084_197_039
  end
end
