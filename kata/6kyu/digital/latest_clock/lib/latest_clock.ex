defmodule LatestClock do
  @moduledoc false

  def latest_clock(a, b, c, d) do
    permute([a, b, c, d])
    |> Enum.reduce(Time.from_seconds_after_midnight(0), fn [a, b, c, d], acc ->
      case Time.new(10 * a + b, 10 * c + d, 0) do
        {:error, _} -> acc
        {:ok, time} -> max(time, acc)
      end
    end)
    |> Time.to_string()
    |> String.slice(0..4)
  end

  def permute([]), do: [[]]
  def permute(list), do: for(h <- list, t <- permute(list -- [h]), do: [h | t])
end
