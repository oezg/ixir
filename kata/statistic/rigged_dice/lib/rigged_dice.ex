defmodule RiggedDice do
  @moduledoc false
  @doc """
  Create a rigged dice function that 22% of the time returns the number 6.
  The rest of the time it returns the integers 1,2,3,4,5 uniformly.
  """
  def throw_rigged do
    if :rand.uniform(100) < 23 do
      6
    else
      :rand.uniform(5)
    end
  end
end
