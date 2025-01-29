defmodule KillKthBit do
  @moduledoc false

  @doc """
  Return the given number n with the kth bit from right unset.
  """
  @spec kill_kth_bit(n :: non_neg_integer(), k :: pos_integer()) :: non_neg_integer()
  def kill_kth_bit(n, k) do
    n - Bitwise.band(n, 2 ** (k - 1))
  end
end
