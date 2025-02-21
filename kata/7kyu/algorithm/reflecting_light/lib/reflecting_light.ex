defmodule ReflectingLight do
  @moduledoc false

  def reflections(max_x, max_y) do
    Stream.unfold(
      %{x: 1, y: 1, dx: 1, dy: 1},
      fn %{x: x, y: y, dx: dx, dy: dy} ->
        case {x, y} do
          {-1, -1} -> nil
          {0, 0} -> {true, %{x: -1, y: -1, dx: 0, dy: 0}}
          {^max_x, ^max_y} -> {true, %{x: -1, y: -1, dx: 0, dy: 0}}
          {0, ^max_y} -> {false, %{x: -1, y: -1, dx: 0, dy: 0}}
          {^max_x, 0} -> {false, %{x: -1, y: -1, dx: 0, dy: 0}}
          {^max_x, y} -> {:continue, %{x: max_x - dx, y: y + dy, dx: -dx, dy: dy}}
          {x, ^max_y} -> {:continue, %{x: x + dx, y: max_y - dy, dx: dx, dy: -dy}}
          {0, y} -> {:continue, %{x: -dx, y: y + dy, dx: -dx, dy: dy}}
          {x, 0} -> {:continue, %{x: x + dx, y: -dy, dx: dx, dy: -dy}}
          {x, y} -> {:continue, %{x: x + dx, y: y + dy, dx: dx, dy: dy}}
        end
      end
    )
    |> Enum.reduce(fn ele, _acc -> ele end)
  end
end
