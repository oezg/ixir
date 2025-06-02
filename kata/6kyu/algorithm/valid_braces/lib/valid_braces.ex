defmodule ValidBraces do
  @moduledoc """
  Write a function that takes a string of braces, and determines if the order of the braces is valid.
  """

  @spec valid_braces(binary()) :: boolean()
  def valid_braces(braces), do: valid_braces(braces, [])

  defp valid_braces("", []), do: true
  defp valid_braces("", _stack), do: false
  defp valid_braces("(" <> rest, stack), do: valid_braces(rest, [")" | stack])
  defp valid_braces("[" <> rest, stack), do: valid_braces(rest, ["]" | stack])
  defp valid_braces("{" <> rest, stack), do: valid_braces(rest, ["}" | stack])

  defp valid_braces(")" <> rest, [")" | stack]), do: valid_braces(rest, stack)
  defp valid_braces("]" <> rest, ["]" | stack]), do: valid_braces(rest, stack)
  defp valid_braces("}" <> rest, ["}" | stack]), do: valid_braces(rest, stack)

  defp valid_braces(")" <> _rest, _stack), do: false
  defp valid_braces("]" <> _rest, _stack), do: false
  defp valid_braces("}" <> _rest, _stack), do: false
end
