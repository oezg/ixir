defmodule ArrayLeaders do
  @moduledoc false

  def array_leaders([]), do: []

  def array_leaders([h | t]),
    do: if(h > Enum.sum(t), do: [h | array_leaders(t)], else: array_leaders(t))
end
