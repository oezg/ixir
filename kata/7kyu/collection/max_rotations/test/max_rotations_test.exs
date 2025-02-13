defmodule MaxRotationsationsTest do
  use ExUnit.Case
  doctest MaxRotations

  test "max_rot" do
    assert MaxRotations.max_rot(38_458_215) == 85_821_534
    assert MaxRotations.max_rot(195_881_031) == 988_103_115
    assert MaxRotations.max_rot(896_219_342) == 962_193_428
    assert MaxRotations.max_rot(69_418_307) == 94_183_076
    assert MaxRotations.max_rot(257_117_280) == 571_172_802
    assert MaxRotations.max_rot(240_522_578) == 452_782_025
    assert MaxRotations.max_rot(561_656_824) == 666_824_515
    assert MaxRotations.max_rot(672_963_486) == 796_348_662
    assert MaxRotations.max_rot(48_192_242) == 89_242_412
    assert MaxRotations.max_rot(25_053_359) == 55_392_035
  end
end
