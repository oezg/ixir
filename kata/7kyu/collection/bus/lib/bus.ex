defmodule Bus do
  @moduledoc false

  def number(stops) do
    Enum.reduce(stops, 0, fn {on, off}, acc ->
      acc + on - off
    end)
  end
end
