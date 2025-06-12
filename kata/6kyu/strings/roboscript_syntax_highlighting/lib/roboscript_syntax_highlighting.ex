defmodule RoboscriptSyntaxHighlighting do
  @moduledoc false

  def highlight(code) do
    code
    |> String.codepoints()
    |> Enum.chunk_by(&Function.identity/1)
    |> Enum.map(fn letters -> span(hd(letters), length(letters)) end)
  end

  def process(coll, curr, acc)
  def process([], curr, acc), do: [form(curr |> Enum.reverse()) | acc] |> Enum.reverse()
  def process([head | tail], [], acc), do: process(tail, [head], acc)
  def process(["F" | tail], ["F" | _] = curr, acc), do: process(tail, ["F" | curr], acc)
  def process(["F" | tail], curr, acc), do: process(tail, ["F"], [form(curr) | acc])
  def process(["R" | tail], ["R" | _] = curr, acc), do: process(tail, ["R" | curr], acc)
  def process(["R" | tail], curr, acc), do: process(tail, ["R"], [form(curr) | acc])
  def process(["L" | tail], ["L" | _] = curr, acc), do: process(tail, ["L" | curr], acc)
  def process(["L" | tail], curr, acc), do: process(tail, ["L"], [form(curr) | acc])
  def process([n | tail], [an | _] = curr, acc) when Regex.match?("\d", n) do
    if Regex.match?("\d", an) do
      process(tail, [n | curr], acc)
    else
      process(tail, [n], [form(curr) | acc])
    end
  end
  def process(["(" | tail], ["(" | _] = curr, acc), do: process(tail, ["(" | curr])
  def process(["R" | tail], curr, acc), do: process(tail, ["R"], [form(curr) | acc])



  def chunk(s), do: chunk(String.reverse(s), "", [])
  defp chunk("", "", acc), do: acc
  defp chunk("", cur, acc), do: [span(cur) | acc]

  defp chunk(<<letter::binary-size(1), rest::binary>>, "", acc),
    do: chunk(rest, letter, acc)

  defp chunk(<<current::binary-size(1), rest::binary>>, <<current::>>, acc),
    do: chunk(rest, , acc)

  defp chunk(<<letter::binary-size(1), rest::binary>>, {current, count}, acc) do
    chunk(rest, {letter, 1}, chunk("", {current, count}, acc))
  end

  def color("F"), do: "pink"
  def color("L"), do: "red"
  def color("R"), do: "green"
  # def color(digit) when Regex.match?("\d", digit), do: "orange"

  def span(flr, count) when flr in ["F", "L", "R"],
    do: "<span style=\"color: #{color(flr)}\">#{String.duplicate(flr, count)}</span>"
  def span(digit, count) when Regex.match?("\d", digit) do
    "<span style=\"color: orange\">#{String.duplicate(, count)}</span>"
  end
end
