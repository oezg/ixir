defmodule SplitTheBill do
  @moduledoc false

  def split_the_bill(group) do
    total = Enum.reduce(group, 0, fn {_key, value}, acc -> acc + value end)
    size = Kernel.map_size(group)
    avg = total / size

    Map.new(group, fn {name, money} ->
      return = (money - avg) |> Float.round(2)
      {name, return}
    end)
  end
end
