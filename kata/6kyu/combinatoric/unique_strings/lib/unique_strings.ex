defmodule UniqueStrings do
  @moduledoc false

  @spec uniq_count(binary()) :: integer()
  def uniq_count(""), do: 1

  def uniq_count(string) do
    n =
      string
      |> String.downcase()
      |> String.length()
      |> factorial()

    m =
      string
      |> String.downcase()
      |> String.codepoints()
      |> Enum.frequencies()
      |> Map.values()
      |> Enum.map(&factorial/1)
      |> Enum.product()

    div(n, m)
  end

  defp factorial(n), do: 1..n |> Enum.product()
end
