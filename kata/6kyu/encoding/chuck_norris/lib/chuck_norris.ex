defmodule ChuckNorris do
  @moduledoc false

  def send(s) do
    String.to_charlist(s)
    |> Enum.map(fn char_val ->
      Integer.digits(char_val, 2)
      |> Enum.chunk_by(&Function.identity/1)
      |> Enum.map(&{List.first(&1), length(&1)})
      |> Enum.map(fn {t, n} ->
        "#{if(t == 1, do: "0", else: "00")} #{String.duplicate("0", n)}"
      end)
      |> Enum.join(" ")
    end)
    |> Enum.join(" ")
  end

  def receive(s) do
    String.split(s)
    |> Enum.chunk_every(2)
    |> Enum.map(fn
      ["0", bits] -> String.duplicate("1", String.length(bits))
      ["00", bits] -> String.duplicate("0", String.length(bits))
    end)
    |> Enum.map()
  end
end
