defmodule ExponentialGolombDecoder do
  @moduledoc false

  def decoder(s) do
    String.graphemes(s)
    |> mana
  end

  def mana(coll) do
  end

  def decode(code) do
    {n, _} = Integer.parse(code, 2)
    n
  end
end
