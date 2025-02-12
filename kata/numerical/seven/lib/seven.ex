defmodule Seven do
  @moduledoc false

  def seven(m, steps \\ 0)
  def seven(m, steps) when m < 100, do: [m, steps]
  def seven(m, steps), do: seven(div(m, 10) - 2 * rem(m, 10), steps + 1)
end
