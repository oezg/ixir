defmodule Mumbling do
  @moduledoc false

  @doc """
  ## Examples:
      iex> Mumbling.accum("abcd")
      "A-Bb-Ccc-Dddd"
      iex> Mumbling.accum("RqaEzty")
      "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
      iex> Mumbling.accum("cwAt")
      "C-Ww-Aaa-Tttt"
  """
  def accum(s) do
    s
    |> String.graphemes()
    |> Enum.with_index(1)
    |> Enum.map_join("-", fn {letter, index} ->
      String.duplicate(letter, index)
      |> String.capitalize()
    end)
  end
end
