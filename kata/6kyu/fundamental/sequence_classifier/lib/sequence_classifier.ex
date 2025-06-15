defmodule SequenceClassifier do
  @moduledoc false
  @unordered 0
  @increasing 1
  @not_decreasing 2
  @decreasing 3
  @not_increasing 4
  @constant 5

  @spec sequence_classifier(nonempty_maybe_improper_list()) :: 0 | 1 | 2 | 3 | 4 | 5
  def sequence_classifier(arr), do: order(tl(arr), hd(arr), nil)

  defp order([], _old, acc), do: acc
  defp order([old | tail], old, nil), do: order(tail, old, @constant)
  defp order([head | tail], old, nil) when head < old, do: order(tail, head, @decreasing)
  defp order([head | tail], _old, nil), do: order(tail, head, @increasing)

  defp order([head | _tail], old, @increasing) when head < old, do: @unordered
  defp order([head | _tail], old, @not_decreasing) when head < old, do: @unordered
  defp order([head | _tail], old, @decreasing) when head > old, do: @unordered
  defp order([head | _tail], old, @not_increasing) when head > old, do: @unordered

  defp order([old | tail], old, @increasing), do: order(tail, old, @not_decreasing)

  defp order([old | tail], old, @decreasing), do: order(tail, old, @not_increasing)

  defp order([head | tail], old, @constant) when head < old,
    do: order(tail, head, @not_increasing)

  defp order([head | tail], old, @constant) when head > old,
    do: order(tail, head, @not_decreasing)

  defp order([head | tail], _old, acc), do: order(tail, head, acc)
end
