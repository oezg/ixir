defmodule AddLetters do
  @moduledoc false

  def add_letters(letters) do
    total =
      letters
      |> Enum.join()
      |> to_charlist()
      |> Enum.map(&(&1 - ?a + 1))
      |> Enum.sum()

    case rem(total, 26) do
      0 ->
        "z"

      n ->
        <<n + ?a - 1>>
    end
  end
end
