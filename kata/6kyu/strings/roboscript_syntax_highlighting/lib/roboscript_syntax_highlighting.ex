defmodule RoboscriptSyntaxHighlighting do
  @moduledoc false

  def highlight(code) do
    code
    |> String.codepoints()
    |> Enum.chunk_by(&chunk_fun/1)
    |> Enum.map(&map_fun/1)
    |> Enum.join()
  end

  def map_fun(["F" | _] = lst) do
    span_format("pink", Enum.join(lst))
  end

  def map_fun(["R" | _] = lst) do
    span_format("green", Enum.join(lst))
  end

  def map_fun(["L" | _] = lst) do
    span_format("red", Enum.join(lst))
  end

  def map_fun(["(" | _] = lst) do
    Enum.join(lst)
  end

  def map_fun([")" | _] = lst) do
    Enum.join(lst)
  end

  def map_fun(lst) do
    span_format("orange", Enum.join(lst))
  end

  def span_format(color, text) do
    "<span style=\"color: #{color}\">#{text}</span>"
  end

  def chunk_fun("F"), do: :forward
  def chunk_fun("R"), do: :right
  def chunk_fun("L"), do: :left
  def chunk_fun("("), do: :brace
  def chunk_fun(")"), do: :brace
  def chunk_fun("0"), do: :digit
  def chunk_fun("1"), do: :digit
  def chunk_fun("2"), do: :digit
  def chunk_fun("3"), do: :digit
  def chunk_fun("4"), do: :digit
  def chunk_fun("5"), do: :digit
  def chunk_fun("6"), do: :digit
  def chunk_fun("7"), do: :digit
  def chunk_fun("8"), do: :digit
  def chunk_fun("9"), do: :digit
end
