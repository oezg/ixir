defmodule BijectiveBinaryTest do
  use ExUnit.Case
  doctest BijectiveBinary

  test "Example Tests" do
        example_tests = [
            ["",0],
            ["1",1],
            ["2",2],
            ["121",9],
            ["2221211112112111112",1000000]
        ]
        Enum.each(example_tests,fn [s,n] ->
            assert BijectiveBinary.convert_to_int(s) == n
            assert BijectiveBinary.convert_from_int(n) == s
        end)
    end
end
