defmodule RiggedDiceTest do
  use ExUnit.Case
  doctest RiggedDice

  import RiggedDice, only: [throw_rigged: 0]

  test "Test with 10k trials" do
    initial_state = %{in_range: true, thrown_values: [], sixes: 0}

    results =
      Enum.reduce(1..10_000, initial_state, fn _, state ->
        op = throw_rigged()

        state =
          if !Enum.member?(1..6, op) do
            Map.put(state, :in_range, false)
          else
            state
          end

        state = Map.put(state, :thrown_values, add_thrown(state[:thrown_values], op))

        if op == 6 do
          Map.put(state, :sixes, state[:sixes] + 1)
        else
          state
        end
      end)

    assert results[:in_range] == true,
           "Your function did not return an integer in the range [1,6]"

    assert results[:thrown_values] == [1, 2, 3, 4, 5, 6],
           "Not all values of the dice were returned"

    assert (2170 <= results[:sixes] && 2230 >= results[:sixes]) == true,
           "After 100k calls your solution returned 6: #{results[:sixes]} times"
  end

  defp add_thrown(thrown, number) do
    already_in_list = Enum.any?(thrown, fn x -> x == number end)

    case already_in_list do
      true -> thrown
      _ -> Enum.sort([number | thrown])
    end
  end
end
