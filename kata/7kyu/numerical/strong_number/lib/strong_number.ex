defmodule StrongNumber do
  @moduledoc false

  @doc """
  Strong number is a number with the sum of the factorial of its digits is equal to the number itself.
  """
  def strong(num) do
    if num == sum_digits_by(num, &factorial/1), do: "STRONG!!!!", else: "Not Strong !!"
  end

  defp sum_digits_by(num, fun) do
    num
    |> Integer.digits()
    |> Enum.map(fun)
    |> Enum.sum()
  end

  defp factorial(num, acc \\ 1)
  defp factorial(0, acc), do: acc
  defp factorial(num, acc), do: factorial(num - 1, num * acc)
end
