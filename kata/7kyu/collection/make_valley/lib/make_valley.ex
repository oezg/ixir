defmodule MakeValley do
  @moduledoc false

  def make_valley([]), do: []

  def make_valley(a) do
    srt = Enum.sort(a, :desc)
    up = Enum.take_every(srt, 2)
    down = srt |> tl |> Enum.take_every(2) |> Enum.reverse()
    up ++ down
  end
end
