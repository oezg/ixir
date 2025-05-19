defmodule Currency do
  @moduledoc false

  def make_change(amount) do
    [H: 50, Q: 25, D: 10, N: 5, P: 1]
    |> Enum.reduce_while(
      {%{}, amount},
      fn
        {coin, value}, {result, amount} ->
          if amount == 0 do
            {:halt, {result, amount}}
          else
            {:cont,
             if amount < value do
               {result, amount}
             else
               {Map.put(result, coin, div(amount, value)), rem(amount, value)}
             end}
          end
      end
    )
    |> elem(0)
  end
end
