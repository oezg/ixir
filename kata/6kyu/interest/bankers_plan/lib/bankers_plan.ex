defmodule BankersPlan do
  @moduledoc false

  def fortune(f0, _p, _c0, _n, _i) when f0 < 0, do: false
  def fortune(_f0, _p, _c0, 1, _i), do: true

  def fortune(f0, p, c0, n, i) do
    fortune(
      trunc(f0 * (p + 100) / 100) - c0,
      p,
      trunc(c0 * (i + 100) / 100),
      n - 1,
      i
    )
  end
end
