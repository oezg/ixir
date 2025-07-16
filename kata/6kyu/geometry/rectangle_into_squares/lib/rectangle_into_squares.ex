defmodule RectangleIntoSquares do
  @moduledoc false

  def squares_in_rect(lngth, wdth) when lngth == wdth, do: nil
  def squares_in_rect(lngth, wdth), do: squares_in_rect(lngth, wdth, [])
  defp squares_in_rect(0, _wdth, acc), do: Enum.reverse(acc)
  defp squares_in_rect(lngth, wdth, acc) when lngth < wdth, do: squares_in_rect(wdth, lngth, acc)
  defp squares_in_rect(lngth, wdth, acc), do: squares_in_rect(lngth - wdth, wdth, [wdth | acc])
end
