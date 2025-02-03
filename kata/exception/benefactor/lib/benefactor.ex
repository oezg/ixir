defmodule Benefactor do
  @moduledoc false

  def new_avg(arr, newavg) do
    miss = (length(arr) + 1) * newavg - Enum.sum(arr)

    if miss < 0 do
      raise ArgumentError, "Expected New Average is too low"
    else
      ceil(miss)
    end
  end
end
