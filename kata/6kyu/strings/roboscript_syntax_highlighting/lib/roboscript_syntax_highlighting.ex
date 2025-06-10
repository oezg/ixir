defmodule RoboscriptSyntaxHighlighting do
  @moduledoc false

  def highlight(code) do
  end

  def color("F"), do: "pink"
  def color("L"), do: "red"
  def color("R"), do: "green"

  def span(flr, count) when flr in ["F", "L", "R"],
    do: "<span style=\"color: #{color(flr)}\">#{String.duplicate(flr, count)}</span>"
end
