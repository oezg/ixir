defmodule TextingWithOldPhone do
  @moduledoc false
  @keymap %{
    "1" => "1-",
    "2" => "2-",
    "3" => "3-",
    "4" => "4-",
    "5" => "5-",
    "6" => "6-",
    "7" => "7-",
    "8" => "8-",
    "9" => "9-",
    "0" => "0-",
    "*" => "*-",
    "#" => "#-",
    "." => "1",
    "," => "11",
    "?" => "111",
    "!" => "1111",
    "a" => "2",
    "b" => "22",
    "c" => "222",
    "d" => "3",
    "e" => "33",
    "f" => "333",
    "g" => "4",
    "h" => "44",
    "i" => "444",
    "j" => "5",
    "k" => "55",
    "l" => "555",
    "m" => "6",
    "n" => "66",
    "o" => "666",
    "p" => "7",
    "q" => "77",
    "r" => "777",
    "s" => "7777",
    "t" => "8",
    "u" => "88",
    "v" => "888",
    "w" => "9",
    "x" => "99",
    "y" => "999",
    "z" => "9999",
    "'" => "*",
    "-" => "**",
    "+" => "***",
    "=" => "****",
    " " => "0"
  }

  @spec send_message(binary()) :: binary()
  @doc """
  ## Examples
    iex>TextingWithOldPhone.send_message("a2D3")
    "2 2-#3 3-"
  """
  def send_message(message), do: send_message(message, :lower, [])

  defp send_message("", _case, acc), do: Enum.join(Enum.reverse(acc))

  defp send_message(<<head::utf8, _tail::binary>> = message, :lower, acc) when head in ?A..?Z,
    do: send_message(message, :upper, ["#" | acc])

  defp send_message(<<head::utf8, _tail::binary>> = message, :upper, acc) when head in ?a..?z,
    do: send_message(message, :lower, ["#" | acc])

  defp send_message(<<head::binary-size(1), tail::binary>>, :lower, []),
    do: send_message(tail, :lower, [@keymap[head]])

  defp send_message(<<head::binary-size(1), tail::binary>>, letter_case, acc) do
    value = @keymap[String.downcase(head)]

    send_message(tail, letter_case, [
      value,
      if(String.first(value) == String.last(hd(acc)), do: " ") | acc
    ])
  end
end
