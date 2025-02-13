defmodule MaxRotations do
  @moduledoc false

  def max_rot(num), do: Enum.max(rotations(num))

  def rotations(n) do
    Stream.unfold({[], Integer.digits(n)}, fn
      {_, []} ->
        nil

      {pre, [head | tail] = post} ->
        [head | tail] = tail ++ [head]
        {Integer.undigits(pre ++ post), {pre ++ [head], tail}}
    end)
  end
end
