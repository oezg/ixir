defmodule Polydivisible do
  @moduledoc false

  def next(n) do
    polydivisibles()
    |> Enum.find(&(&1 > n))
  end

  def polydivisibles do
    Stream.unfold(
      {1, 1..9 |> Enum.to_list()},
      fn
        {_, []} -> nil
        {digit, polys} -> {polys, {digit + 1, next(digit, polys)}}
      end
    )
    |> Enum.to_list()
    |> List.flatten()
  end

  def next(digit, polys) do
    for polydivisible <- polys,
        increment <- 0..9,
        candidate = polydivisible * 10 + increment,
        rem(candidate, digit + 1) == 0,
        do: candidate
  end
end
