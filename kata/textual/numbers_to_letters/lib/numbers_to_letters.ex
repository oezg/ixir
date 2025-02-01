defmodule NumbersToLetters do
  @moduledoc false
  @letters for i <- 0..25, into: %{}, do: {(26 - i) |> Integer.to_string(), i + ?a}
  @trans Map.merge(@letters, %{"27" => ?!, "28" => ??, "29" => ?\s})
  def switcher(ns) do
    for n <- ns, into: ~c"" do
      @trans[n]
    end
    |> to_string()
  end
end
