defmodule AirportItinerary do
  @moduledoc false

  def itinerary(trip) do
    # terminals =
    #   for %Flight{in: inbound, out: outbound} <- trip do
    #     [inbound, outbound]
    #   end

    # terminals = List.flatten(terminals)
    terminals =
      Enum.flat_map(trip, fn x ->
        [x.in, x.out]
      end)

    terminals = remove_consecutive_duplicates(terminals)
    Enum.join(terminals, "-")
  end

  defp remove_consecutive_duplicates(terminals) do
    Enum.reduce(terminals, [], fn terminal, acc ->
      if List.last(acc) == terminal do
        acc
      else
        acc ++ [terminal]
      end
    end)
  end
end
