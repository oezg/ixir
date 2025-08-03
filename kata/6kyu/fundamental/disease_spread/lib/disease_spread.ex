defmodule DiseaseSpread do
  @moduledoc false
  def epidemic(tm, n, s0, i0, b, a) do
    aux(tm / n, s0, i0, 0.0, b, a, i0, n)
  end

  def aux(_, _, _, _, _, _, max_inf, 0), do: max_inf |> trunc()

  def aux(dt, sus, inf, rec, b, a, max_inf, n) do
    new_inf = inf * (1 + dt * (b * sus - a))

    aux(
      dt,
      sus * (1 - dt * b * inf),
      new_inf,
      rec + dt * inf * a,
      b,
      a,
      max(max_inf, new_inf),
      n - 1
    )
  end
end
