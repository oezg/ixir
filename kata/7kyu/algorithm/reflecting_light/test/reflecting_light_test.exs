defmodule ReflectingLightTest do
  use ExUnit.Case
  doctest ReflectingLight
  def run_test(x, y, sol), do: assert(ReflectingLight.reflections(x, y) == sol)

  describe "Example Test Cases" do
    test "10, 10", do: run_test(10, 10, true)
    test "10, 20", do: run_test(10, 20, false)
    test "12, 23", do: run_test(12, 23, false)
    test "5, 25", do: run_test(5, 25, true)
  end
end
