defmodule ConsecutiveDucks do
  @moduledoc false
  require Integer

  @doc """
  Given positive integer N, return true
  if it can be expressed as a sum of two
  or more consecutive positive numbers,
  otherwise return false.
  """
  def consecutive_ducks(x) when x < 3, do: false
  def consecutive_ducks(x) when Integer.is_odd(x), do: true
  def consecutive_ducks(x), do: consecutive_ducks(div(x, 2))
end
