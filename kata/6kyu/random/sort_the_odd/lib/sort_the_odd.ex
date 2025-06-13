defmodule SortTheOdd do
  @moduledoc """
  Given an array of numbers, sort the odd numbers in ascending order
  while leaving the even numbers at their original positions.
  """
  require Integer

  def sort_the_odd(nums) do
    odds = nums |> Enum.filter(&Integer.is_odd/1) |> Enum.sort()
    replace_odds(nums, odds, [])
  end

  def replace_odds([], _odds, acc), do: Enum.reverse(acc)

  def replace_odds([head | tail], odds, acc) when Integer.is_even(head) do
    replace_odds(tail, odds, [head | acc])
  end

  def replace_odds([_head | tail], [odd | rest], acc) do
    replace_odds(tail, rest, [odd | acc])
  end
end
