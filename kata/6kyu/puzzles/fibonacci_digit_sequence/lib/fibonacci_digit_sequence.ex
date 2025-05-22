defmodule FibonacciDigitSequence do
  @moduledoc false
  def find(0, 0, _n), do: 0
  def find(a, _b, 0), do: a
  def find(a, b, n), do: find(10 * a + b, n - 1)
  defp find(ab, 0), do: rem(ab, 10)
  defp find(ab, n) when ab < 10, do: find(11 * ab, n - 1)
  defp find(10, 1), do: 1
  defp find(10, n), do: find(11, n - 2)
  defp find(11, 1), do: 2
  defp find(11, 2), do: 3
  defp find(11, 3), do: 5
  defp find(11, 4), do: 8
  defp find(11, 5), do: 1
  defp find(11, 6), do: 3
  defp find(11, 7), do: 4
  defp find(11, 8), do: 7
  defp find(11, 9), do: 1
  defp find(11, n), do: find(11, rem(n, 10))
  defp find(12, n), do: find(11, n + 1)
  defp find(13, 1), do: 4
  defp find(13, 2), do: 7
  defp find(13, 3), do: 1
  defp find(13, n), do: find(11, n - 4)
  defp find(14, 1), do: 5
  defp find(14, 2), do: 9
  defp find(14, 3), do: 1
  defp find(14, n), do: find(14, rem(n, 4))
  defp find(15, 1), do: 6
  defp find(15, 2), do: 1
  defp find(15, n), do: find(11, n - 3)
  defp find(16, 1), do: 7
  defp find(16, 2), do: 1
  defp find(16, n), do: find(13, n - 3)
  defp find(17, 1), do: 8
  defp find(17, 2), do: 1
  defp find(17, n), do: find(15, n - 3)
  defp find(18, 1), do: 9
  defp find(18, 2), do: 1
  defp find(18, n), do: find(17, n - 3)

  defp find(ab, n) do
    a = div(ab, 10)
    b = rem(ab, 10)
    c = a + b

    cond do
      c < 10 -> find(b * 10 + c, n - 1)
      n > 1 -> find(c, n - 2)
      true -> 1
    end
  end
end
