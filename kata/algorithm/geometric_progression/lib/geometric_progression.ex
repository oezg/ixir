defmodule GeometricProgression do
  @moduledoc false

  @doc """
  Return the first n elements of the geometric progression
  sequence with the ratio r and initial value a.
  """
  def geometric_sequence_elements(a, r, n) do
    Stream.iterate(a, &(r * &1))
    |> Enum.take(n)
    |> Enum.join(", ")
  end
end
