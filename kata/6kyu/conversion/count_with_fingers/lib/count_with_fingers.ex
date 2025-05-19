defmodule CountWithFingers do
  @moduledoc false
  def decode(fingers) do
    left_digits = String.slice(fingers, 0, 4) |> String.reverse() |> decode_digits
    right_digits = String.slice(fingers, 6, 4) |> decode_digits

    if left_digits < 0 or right_digits < 0 do
      -1
    else
      left_value = thumb(String.slice(fingers, 4, 1)) + left_digits
      right_value = thumb(String.slice(fingers, 5, 1)) + right_digits
      left_value * 10 + right_value
    end
  end

  def decode_digits("0000"), do: 0
  def decode_digits("1000"), do: 1
  def decode_digits("1100"), do: 2
  def decode_digits("1110"), do: 3
  def decode_digits("1111"), do: 4
  def decode_digits(_), do: -1

  def thumb("0"), do: 0
  def thumb("1"), do: 5
end
