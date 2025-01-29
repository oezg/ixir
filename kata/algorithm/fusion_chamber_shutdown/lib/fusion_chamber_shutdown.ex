defmodule FusionChamberShutdown do
  @moduledoc false

  @doc """
  Given the number of atoms of Carbon [C],
  Hydrogen[H] and Oxygen[O] in the chamber,
  calculate how many molecules of Water [H2O],
  Carbon Dioxide [CO2] and Methane [CH4] will
  be produced following the order of reaction
  affinity below:

  ## Order of reaction affinity

      1. Hydrogen reacts with Oxygen   = H2O
      2. Carbon   reacts with Oxygen   = CO2
      3. Carbon   reacts with Hydrogen = CH4
  """
  def burner(c, h, o) do
    {h, o, w} = react2(%{amount: h, rate: 2}, %{amount: o})
    {c, _o, co2} = react2(%{amount: c}, %{amount: o, rate: 2})
    {_c, _h, m} = react2(%{amount: c}, %{amount: h, rate: 4})
    {w, co2, m}
  end

  defp react2(x, y) do
    x = Map.put_new(x, :rate, 1)
    y = Map.put_new(y, :rate, 1)

    r =
      [x, y]
      |> Enum.map(&div(&1.amount, &1.rate))
      |> Enum.min()

    {x.amount - r * x.rate, y.amount - r * y.rate, r}
  end
end
