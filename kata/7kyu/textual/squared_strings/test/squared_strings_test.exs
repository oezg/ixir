defmodule SquaredStringsTest do
  use ExUnit.Case
  doctest SquaredStrings

  test "basic tests vert_mirror" do
    assert SquaredStrings.oper(
             &SquaredStrings.vert_mirror/1,
             "hSgdHQ\nHnDMao\nClNNxX\niRvxxH\nbqTVvA\nwvSyRu"
           ) ==
             "QHdgSh\noaMDnH\nXxNNlC\nHxxvRi\nAvVTqb\nuRySvw"

    assert SquaredStrings.oper(
             &SquaredStrings.vert_mirror/1,
             "IzOTWE\nkkbeCM\nWuzZxM\nvDddJw\njiJyHF\nPVHfSx"
           ) ==
             "EWTOzI\nMCebkk\nMxZzuW\nwJddDv\nFHyJij\nxSfHVP"
  end

  test "basic tests hor_mirror" do
    assert SquaredStrings.oper(&SquaredStrings.hor_mirror/1, "lVHt\nJVhv\nCSbg\nyeCt") ==
             "yeCt\nCSbg\nJVhv\nlVHt"

    assert SquaredStrings.oper(&SquaredStrings.hor_mirror/1, "njMK\ndbrZ\nLPKo\ncEYz") ==
             "cEYz\nLPKo\ndbrZ\nnjMK"
  end
end
