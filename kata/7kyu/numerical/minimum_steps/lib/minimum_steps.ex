defmodule MinimumSteps do
  @moduledoc false

  @doc """
  Given an array of N integers, find how many times
  you have to add up the smallest numbers in the array
  until their sum becomes greater or equal to value.
  """
  def minimum_steps(nums, value) do
    nums
    |> Enum.sort()
    |> Enum.scan(&Kernel.+/2)
    |> Enum.take_while(&(&1 < value))
    |> Enum.count()
  end
end
