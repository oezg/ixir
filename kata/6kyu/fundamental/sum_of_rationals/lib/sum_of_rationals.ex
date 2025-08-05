defmodule SumOfRationals do
  @moduledoc false
  @spec sum_fracts([{integer, integer}]) :: nil | integer | {integer, integer}
  def sum_fracts(list) do
    Enum.reduce(list, nil, fn
      first, nil ->
        fract_reduce(first)

      {numer_1, denom_1}, {numer_2, denom_2} ->
        fract_reduce({denom_2 * numer_1 + numer_2 * denom_1, denom_1 * denom_2})

      {numer, denom}, int ->
        fract_reduce({int * denom + numer, denom})
    end)
  end

  @spec fract_reduce({integer, integer}) :: integer | {integer, integer}
  defp fract_reduce({numer, denom}) do
    case Integer.gcd(numer, denom) do
      ^denom -> div(numer, denom)
      1 -> {numer, denom}
      gcd -> {div(numer, gcd), div(denom, gcd)}
    end
  end
end
