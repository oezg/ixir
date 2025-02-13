defmodule TidyNumber do
  def tidy_number(n) do
    n
    |> Integer.digits()
    |> decreasing?
    |> Kernel.not()
  end

  defp decreasing?([num | nums]) do
    !Enum.reduce_while(nums, num, fn n, s ->
      if n < s do
        {:halt, false}
      else
        {:cont, n}
      end
    end)
  end
end
