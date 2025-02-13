defmodule SumOfABeach do
  @moduledoc false

  def sum_of_a_beach(beach) do
    sunset(String.downcase(beach))
  end

  def sunset("sand" <> rest), do: 1 + sunset(rest)
  def sunset("water" <> rest), do: 1 + sunset(rest)
  def sunset("fish" <> rest), do: 1 + sunset(rest)
  def sunset("sun" <> rest), do: 1 + sunset(rest)
  def sunset(<<_, rest::binary>>), do: sunset(rest)
  def sunset(""), do: 0
end
