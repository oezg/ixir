defmodule WordsToHex do
  @moduledoc false

  def words_to_hex(words) do
    String.split(words)
    |> Enum.map(&word_to_letters/1)
    |> Enum.map(&"##{Enum.join(&1)}")
  end

  def word_to_letters(word) do
    String.to_charlist(word)
    |> Enum.take(3)
    |> pad3
    |> Enum.map(&Integer.to_string(&1, 16))
    |> Enum.map(&pad2/1)
  end

  @spec pad2(binary()) :: binary()
  def pad2(word) do
    if String.length(word) < 2 do
      pad2("0" <> word)
    else
      word
    end
  end

  def pad3(list) do
    if length(list) < 3 do
      pad3(list ++ [0])
    else
      list
    end
  end
end
