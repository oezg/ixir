defmodule ExponentialGolombDecoderTest do
  use ExUnit.Case
  doctest ExponentialGolombDecoder

  test "sample tests" do
    Enum.each(
      [
        {"01001100100", [1, 2, 3]},
        {"00000101001000011111000101100110", [40, 30, 10, 5]},
        {"111000000000110010000100000000011001000010000000001100100001111",
         [0, 0, 0, 800, 800, 800, 0, 0, 0]},
        {"0000001000000", [63]},
        {"1", [0]},
        {"0101010101011010010", [1, 0, 1, 0, 1, 0, 0, 1, 1]},
        {"111111111111000000010000000", [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 127]}
      ],
      fn {bin_str, expected} ->
        actual = ExponentialGolombDecoder.decoder(bin_str)
        assert actual == expected
      end
    )
  end
end
