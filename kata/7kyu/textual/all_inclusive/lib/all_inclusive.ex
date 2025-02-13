defmodule AllInclusive do
  @moduledoc false

  @spec contain_all_rots(binary(), list()) :: boolean()
  def contain_all_rots("", _arr), do: true

  def contain_all_rots(s, arr) do
    contain_all?(arr).(rotations(s))
  end

  def contain_all?(a) do
    a = MapSet.new(a)
    &MapSet.subset?(MapSet.new(&1), a)
  end

  @spec rotations(binary()) :: list()
  @doc """
  ## Examples

      iex>AllInclusive.rotations("abcd")
      ["abcd", "bcda", "cdab", "dabc"]

  """
  def rotations(s) do
    len = String.length(s)
    s2 = String.duplicate(s, 2)

    0..(len - 1)
    |> Enum.map(&String.slice(s2, &1, len))
  end
end
