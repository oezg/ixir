defmodule HeronsRoot do
  @moduledoc false

  def int_rac(n, guess) do
    heron(n, guess, 1)
  end

  def heron(n, x, e) do
    y = div(x + div(n, x), 2)

    if abs(x - y) < e do
      1
    else
      1 + heron(n, y, e)
    end
  end
end
