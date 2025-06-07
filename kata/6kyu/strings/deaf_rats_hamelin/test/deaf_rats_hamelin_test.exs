defmodule DeafRatsHamelinTest do
  use ExUnit.Case
  doctest DeafRatsHamelin

  test "ex1" do
    assert DeafRatsHamelin.count_deaf_rats("~O~O~O~O P") == 0
  end

  test "ex2" do
    assert DeafRatsHamelin.count_deaf_rats("P O~ O~ ~O O~") == 1
  end

  test "ex3" do
    assert DeafRatsHamelin.count_deaf_rats("~O~O~O~OP~O~OO~") == 2
  end
end
