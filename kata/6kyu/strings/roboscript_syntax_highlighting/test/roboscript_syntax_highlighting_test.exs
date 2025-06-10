defmodule RoboscriptSyntaxHighlightingTest do
  use ExUnit.Case
  doctest RoboscriptSyntaxHighlighting

  import RoboscriptSyntaxHighlighting, only: [highlight: 1]

  test "Your Syntax Highlighter" do
    IO.puts("Code without syntax highlighting: F3RF5LF7")
    IO.inspect(highlight("F3RF5LF7"), label: "Your code with syntax highlighting: ")

    IO.puts(
      "Expected syntax highlighting: <span style=\"color: pink\">F</span><span style=\"color: orange\">3</span><span style=\"color: green\">R</span><span style=\"color: pink\">F</span><span style=\"color: orange\">5</span><span style=\"color: red\">L</span><span style=\"color: pink\">F</span><span style=\"color: orange\">7</span>"
    )

    assert highlight("F3RF5LF7") ==
             "<span style=\"color: pink\">F</span><span style=\"color: orange\">3</span><span style=\"color: green\">R</span><span style=\"color: pink\">F</span><span style=\"color: orange\">5</span><span style=\"color: red\">L</span><span style=\"color: pink\">F</span><span style=\"color: orange\">7</span>"

    IO.puts("Code without syntax highlighting: FFFR345F2LL")
    IO.inspect(highlight("FFFR345F2LL"), label: "Your code with syntax highlighting: ")

    IO.puts(
      "Expected syntax highlighting: <span style=\"color: pink\">FFF</span><span style=\"color: green\">R</span><span style=\"color: orange\">345</span><span style=\"color: pink\">F</span><span style=\"color: orange\">2</span><span style=\"color: red\">LL</span>"
    )

    assert highlight("FFFR345F2LL") ==
             "<span style=\"color: pink\">FFF</span><span style=\"color: green\">R</span><span style=\"color: orange\">345</span><span style=\"color: pink\">F</span><span style=\"color: orange\">2</span><span style=\"color: red\">LL</span>"
  end
end
