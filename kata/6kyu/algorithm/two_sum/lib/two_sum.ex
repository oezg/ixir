defmodule TwoSum do
  @moduledoc """
  Write a function that takes an array of numbers and a target number.
  It should find two different items in the array that, when added
  together, give the target value.
  The indices of these items should then be returned in a tuple
  """

  # @spec two_sum([integer()], integer()) :: {integer(), integer()}
  # def two_sum(numbers, target) do
  #   last_index = length(numbers) - 2

  #   indices =
  #     for i <- 0..last_index, j <- i..last_index, do: {i, j + 1}

  #   nth = &Enum.at(numbers, &1)

  #   Enum.find(indices, fn {a, b} -> nth.(a) + nth.(b) == target end)
  # end

  # @spec two_sum([integer()], integer()) :: {integer(), integer()}
  # def two_sum(numbers, target) do
  #   numbers
  #   |> Enum.with_index()
  #   |> Enum.find_value(fn {number1, index} ->
  #     jindex =
  #       numbers
  #       |> Enum.drop(index + 1)
  #       |> Enum.find_index(fn number2 -> number1 + number2 == target end)

  #     if jindex, do: {index, index + 1 + jindex}, else: nil
  #   end)
  # end

  @spec two_sum([integer()], integer()) :: {integer(), integer()}
  def two_sum([head | tail], target, i \\ 0) do
    j = Enum.find_index(tail, fn n -> head + n == target end)
    if j, do: {i, i + 1 + j}, else: two_sum(tail, target, i + 1)
  end
end
