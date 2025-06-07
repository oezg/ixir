defmodule DeafRatsHamelin do
  @moduledoc false
  @pied_piper "P"
  @rat_going_left "O~"
  @rat_going_right "~O"
  @spec count_deaf_rats(binary()) :: number()
  def count_deaf_rats(s) do
    [right_going, left_going] =
      String.split(s, @pied_piper)
      |> Enum.map(
        &(Regex.split(~r/~O|O~/, &1, include_captures: true, trim: true)
          |> Enum.frequencies())
      )

    Map.get(right_going, @rat_going_left, 0) + Map.get(left_going, @rat_going_right, 0)
  end
end
