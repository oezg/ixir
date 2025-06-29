defmodule ReverseAndCombine do
  @moduledoc false

  @spec reverse_and_combine_text(binary()) :: binary()
  def reverse_and_combine_text(text), do: reword(String.split(text))

  defp reword([word]), do: word

  defp reword(words) do
    words
    |> Enum.map(&String.reverse/1)
    |> Enum.chunk_every(2)
    |> Enum.map(&Enum.join/1)
    |> reword
  end
end
