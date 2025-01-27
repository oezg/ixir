defmodule HappyYear do
  def next_happy_year(year) do
    Stream.iterate(year + 1, &(&1 + 1))
    |> Stream.drop_while(&(not happy_year?(&1)))
    |> Enum.take(1)
    |> hd
  end

  defp happy_year?(year) do
    digits = Integer.digits(year)
    length(digits) == length(Enum.uniq(digits))
  end
end
