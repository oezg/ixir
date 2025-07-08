defmodule Withdraw do
  @moduledoc false
  require Integer

  def withdraw(n) do
    n = div(n, 10)
    x = rem(n, 10)

    cond do
      Integer.is_even(x) ->
        [div(n, 10), 0, div(x, 2)]

      x < 5 ->
        [div(n, 10) - 1, 1, div(5 + x, 2)]

      true ->
        [div(n, 10), 1, div(x - 5, 2)]
    end
  end
end
