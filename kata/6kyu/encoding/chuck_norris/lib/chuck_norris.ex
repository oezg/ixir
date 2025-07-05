defmodule ChuckNorris do
  @moduledoc false

  @spec send(binary()) :: binary()
  def send(s) do
    String.to_charlist(s)
    |> Enum.flat_map(&Enum.take([0 | Integer.digits(&1, 2)], -7))
    |> Enum.chunk_by(&Function.identity/1)
    |> Enum.map_join(" ", fn
      [1 | rest] -> "0 0#{String.duplicate("0", length(rest))}"
      [0 | rest] -> "00 0#{String.duplicate("0", length(rest))}"
    end)
  end

  @spec receive(binary()) :: binary()
  def receive(s) do
    String.split(s)
    |> Enum.chunk_every(2)
    |> Enum.flat_map(fn
      ["0", bits] -> List.duplicate(1, String.length(bits))
      ["00", bits] -> List.duplicate(0, String.length(bits))
    end)
    |> Enum.chunk_every(7)
    |> Enum.map_join(&<<Integer.undigits(&1, 2)::utf8>>)
  end
end
