defmodule Hig do
  def divisors(integer) do
    factors = factors(integer)
    if Enum.empty?(factors), do: "#{integer} is prime", else: Enum.sort(factors)
  end

  def factors(n, m \\ 2, acc \\ MapSet.new([]))
  def factors(1, _m, acc), do: acc
  def factors(n, m, acc) when m > div(n, 2) and length(acc) == 0, do: acc

  def factors(n, m, acc) do
    if rem(n, m) == 0 do
      factors(div(n, m), m, MapSet.put(acc, m))
    else
      factors(n, m + 1, acc)
    end
  end
end
