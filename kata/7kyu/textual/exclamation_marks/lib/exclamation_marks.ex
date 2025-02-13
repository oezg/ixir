defmodule ExclamationMarks do
  @moduledoc false

  def remove1(s) do
    [_, a, b] = Regex.run(~r/^(.*?)(!*)$/, s)
    String.replace(a, "!", "") <> b
  end

  def remove(s) do
    String.replace(s, ~r/!(?!!*$)/, "")
  end
end
