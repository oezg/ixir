defmodule MatrixAddition do
  @moduledoc false

  def matrix_addition(matrixa, matrixb) do
    Enum.zip(matrixa, matrixb)
    |> Enum.map(fn
      {rowa, rowb} ->
        Enum.zip(rowa, rowb)
        |> Enum.map(fn {a, b} -> a + b end)
    end)
  end
end
