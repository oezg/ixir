defmodule HowManyNines do
  @moduledoc false

  def nines(n) do
    t = :math.log10(n) |> floor() |> nine()
    z = Integer.digits(n)

    # Enum.count(0..n, &Enum.member?(Integer.digits(&1), 9))
  end

  def nine(0), do: 0
  def nine(1), do: 1

  def nine(n) do
    10 ** (n - 1) + 9 * nine(n - 1)
  end
end
