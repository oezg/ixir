defmodule GreatestCommonFactor do
  @moduledoc false

  def greatest_common_factor([n]), do: n
  def greatest_common_factor([n | tail]), do: gcd(n, greatest_common_factor(tail))

  def gcd(n, 0), do: n
  def gcd(n, m), do: gcd(m, if(n > m, do: rem(n, m), else: n))
end
