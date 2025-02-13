defmodule OverTheRoad do
  @moduledoc false
  require Integer

  @doc """
  ## Street
      1|   |6
      3|   |4
      5|   |2
        you

  Given your house number x and length of street n,
  give the house number on the opposite side of the street.
  """
  def overTheRoad(address, n), do: n * 2 - address + 1
end
