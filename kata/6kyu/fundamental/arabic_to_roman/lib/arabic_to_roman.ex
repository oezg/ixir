defmodule ArabicToRoman do
  @moduledoc """
  Create a function taking a positive integer between 1 and 3999
  (both included) as its parameter and returning a string
  containing the Roman Numeral representation of that integer.
  """

  @spec solution(integer()) :: binary()
  def solution(number) when is_integer(number) and number > 0 and number < 4000 do
    leng = :math.log10(number) |> floor()

    number
    |> Integer.digits()
    |> Enum.with_index(&{&1, leng - &2})
    |> Enum.map(&roman/1)
    |> Enum.join()
  end

  @spec roman({0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9, 0 | 1 | 2 | 3}) :: binary()
  defp roman({0, _index}), do: ""
  defp roman({1, 0}), do: "I"
  defp roman({2, 0}), do: "II"
  defp roman({3, 0}), do: "III"
  defp roman({4, 0}), do: "IV"
  defp roman({5, 0}), do: "V"
  defp roman({6, 0}), do: "VI"
  defp roman({7, 0}), do: "VII"
  defp roman({8, 0}), do: "VIII"
  defp roman({9, 0}), do: "IX"
  defp roman({1, 1}), do: "X"
  defp roman({2, 1}), do: "XX"
  defp roman({3, 1}), do: "XXX"
  defp roman({4, 1}), do: "XL"
  defp roman({5, 1}), do: "L"
  defp roman({6, 1}), do: "LX"
  defp roman({7, 1}), do: "LXX"
  defp roman({8, 1}), do: "LXXX"
  defp roman({9, 1}), do: "XC"
  defp roman({1, 2}), do: "C"
  defp roman({2, 2}), do: "CC"
  defp roman({3, 2}), do: "CCC"
  defp roman({4, 2}), do: "CD"
  defp roman({5, 2}), do: "D"
  defp roman({6, 2}), do: "DC"
  defp roman({7, 2}), do: "DCC"
  defp roman({8, 2}), do: "DCCC"
  defp roman({9, 2}), do: "CM"
  defp roman({1, 3}), do: "M"
  defp roman({2, 3}), do: "MM"
  defp roman({3, 3}), do: "MMM"
end
