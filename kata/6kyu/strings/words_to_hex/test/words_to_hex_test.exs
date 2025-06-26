defmodule WordsToHexTest do
  use ExUnit.Case
  doctest WordsToHex

  test "Example Tests" do
    assert WordsToHex.words_to_hex("Hello, my name is Gary and I like cheese.") == [
             "#48656C",
             "#6D7900",
             "#6E616D",
             "#697300",
             "#476172",
             "#616E64",
             "#490000",
             "#6C696B",
             "#636865"
           ]

    assert WordsToHex.words_to_hex("0123456789") == ["#303132"]
    assert WordsToHex.words_to_hex("ThisIsOneLongSentenceThatConsistsOfWords") == ["#546869"]

    assert WordsToHex.words_to_hex("Blah blah blah blaaaaaaaaaaaah") == [
             "#426C61",
             "#626C61",
             "#626C61",
             "#626C61"
           ]

    assert WordsToHex.words_to_hex("&&&&& $$$$$ ^^^^^ @@@@@ ()()()()(") == [
             "#262626",
             "#242424",
             "#5E5E5E",
             "#404040",
             "#282928"
           ]
  end
end
