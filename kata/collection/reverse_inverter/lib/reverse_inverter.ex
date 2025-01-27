defmodule ReverseInverter do
  @moduledoc false
  @doc """
  Reverse and invert all integer values in a given list.
  Remove all types other than integer.
  """
  def reverse_invert_ho(lst) do
    lst
    |> Enum.filter(&is_integer/1)
    |> Enum.map(&reverse_integer/1)
    |> Enum.map(&(-&1))
  end

  def reverse_invert(lst, acc \\ [])
  def reverse_invert([], acc), do: acc

  def reverse_invert([h | t], acc) do
    if is_integer(h) do
      [-reverse_integer(h) | reverse_invert(t, acc)]
    else
      reverse_invert(t, acc)
    end
  end

  defp reverse_integer(i) do
    Integer.digits(i)
    |> Enum.reverse()
    |> Integer.undigits()
  end
end
