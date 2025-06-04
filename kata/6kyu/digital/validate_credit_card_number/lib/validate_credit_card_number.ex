defmodule ValidateCreditCardNumber do
  @moduledoc """
  Implement the Luhn algorithm. Given a positive integer of up to 16 digits,
  return true if it is a valid credit card number, and false if it is not.
  """
  require Integer

  @spec validate(pos_integer()) :: boolean()
  def validate(n) do
    n
    |> Integer.digits()
    |> Enum.reverse()
    |> Enum.with_index()
    |> luhn_sum(0)
    |> rem(10)
    |> zero?
  end

  defp luhn_sum([], acc), do: acc

  defp luhn_sum([{digit, index} | tail], acc) when Integer.is_even(index),
    do: luhn_sum(tail, acc + digit)

  defp luhn_sum([{digit, _index} | tail], acc), do: luhn_sum(tail, acc + luhn_double(digit))

  defp luhn_double(digit) when digit < 5, do: digit * 2
  defp luhn_double(digit), do: digit * 2 - 9

  defp zero?(0), do: true
  defp zero?(_), do: false
end
