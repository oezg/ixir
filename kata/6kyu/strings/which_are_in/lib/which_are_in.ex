defmodule WhichAreIn do
  @moduledoc """
  Given two arrays of strings a1 and a2 return a sorted array in lexicographical
  order of the strings of a1 which are substrings of strings of a2.
  """

  def in_array(array1, array2) do
    Enum.sort(array1)
    |> Enum.dedup()
    |> Enum.filter(fn string ->
      Enum.any?(array2, &String.contains?(&1, string))
    end)
  end
end
