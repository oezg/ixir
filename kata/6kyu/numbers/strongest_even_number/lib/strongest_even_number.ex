defmodule StrongestEvenNumber do
  @moduledoc false
  require Integer

  def strongest_even(n, m) do
    mana = fn x -> 2 ** x end

    Range.new(floor(:math.log2(m)), 0, -1)
    |> Enum.map()
  end

  defp first

  #   if n <= largest_power_of_two_less_than_or_equal_to_limit(m) do
  #     largest_power_of_two_less_than_or_equal_to_limit(m)
  #   else
  #     x = if Integer.is_even(n), do: n, else: n + 1
  #     y = if Integer.is_even(m), do: m, else: m - 1

  #     Range.new(x, y, 2)
  #     |> Enum.max_by(&evenness/1)
  #   end
  # end

  # defp evenness(n) when Integer.is_odd(n), do: 0
  # defp evenness(n), do: 1 + evenness(div(n, 2))

  # defp largest_power_of_two_less_than_or_equal_to_limit(n) do
  #   2 ** floor(:math.log2(n))
  # end
end
