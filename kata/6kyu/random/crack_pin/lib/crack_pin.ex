defmodule CrackPin do
  @moduledoc false

  @spec crack(binary()) :: binary()
  def crack(hash) do
    hash_binary = Base.decode16!(hash, case: :lower)

    Stream.iterate(0, &(&1 + 1))
    |> Stream.map(&form/1)
    |> Stream.drop_while(&(:crypto.hash(:md5, &1) != hash_binary))
    |> Enum.at(0)
  end

  defp form(x), do: Integer.to_string(x) |> String.pad_leading(5, "0")
end
