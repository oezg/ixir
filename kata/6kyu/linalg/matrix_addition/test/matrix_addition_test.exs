defmodule MatrixAdditionTest do
  use ExUnit.Case
  doctest MatrixAddition

  def run_test(a, b, sol), do: assert(MatrixAddition.matrix_addition(a, b) == sol)

  describe "Basic Tests" do
    test "#1" do
      run_test(
        [[1, 2], [1, 2]],
        #   +
        [[2, 3], [2, 3]],
        #   =
        [[3, 5], [3, 5]]
      )
    end

    test "#2" do
      run_test(
        [[1]],
        #  +
        [[2]],
        #  =
        [[3]]
      )
    end

    test "#3" do
      run_test(
        [[1, 2, 3], [3, 2, 1], [1, 1, 1]],
        #     +
        [[2, 2, 1], [3, 2, 3], [1, 1, 3]],
        #     =
        [[3, 4, 4], [6, 4, 4], [2, 2, 4]]
      )
    end
  end
end
