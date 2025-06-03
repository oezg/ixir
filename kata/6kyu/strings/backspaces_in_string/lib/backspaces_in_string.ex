defmodule BackspacesInString do
  @moduledoc """
  Assume "#" is like a backspace in string. This means that string "a#bc#d" actually is "bd"
  Your task is to process a string with "#" symbols.
  """

  @spec clean_string(binary()) :: binary()
  def clean_string(s), do: clean_string(to_charlist(s), [])
  defp clean_string([], acc), do: to_string(acc) |> String.reverse()
  defp clean_string([?# | rest], []), do: clean_string(rest, [])
  defp clean_string([?# | rest], acc), do: clean_string(rest, tl(acc))
  defp clean_string([first | rest], acc), do: clean_string(rest, [first | acc])
end
