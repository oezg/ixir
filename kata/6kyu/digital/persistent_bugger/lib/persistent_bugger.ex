defmodule PersistentBugger do
  @moduledoc """
  Write a function, persistence, that takes in a positive parameter n
  and returns its multiplicative persistence, which is the number of
  times you must multiply the digits in num until you reach a single digit.
  """

  def persistence(n) when n < 10, do: 0
  def persistence(n), do: 1 + persistence(multiplicative(n))

  def multiplicative(n) when is_integer(n) and n > 0, do: Enum.product(Integer.digits(n))
end
