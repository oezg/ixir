defmodule SquaredStrings do
  @moduledoc false

  def vert_mirror(str) do
    mirror(fn x -> Enum.map(x, &String.reverse/1) end).(str)
  end

  def hor_mirror(str) do
    mirror(&Enum.reverse/1).(str)
  end

  def oper(func, s) do
    func.(s)
  end

  defp mirror(func) do
    fn str ->
      str
      |> lines()
      |> func.()
      |> unlines()
    end
  end

  defp lines(str) do
    String.split(str, "\n")
  end

  defp unlines(lines) do
    Enum.join(lines, "\n")
  end
end
