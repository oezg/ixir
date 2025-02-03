defmodule Movie do
  @moduledoc false

  def movie(card, ticket, perc) do
    geometric_sum = fn n ->
      perc * (1 - perc ** n) / (1 - perc)
    end

    worth? = fn n ->
      ceil(card + ticket * geometric_sum.(n)) < ticket * n
    end

    Stream.iterate(1, &(&1 + 1))
    |> Enum.find(worth?)
  end
end
