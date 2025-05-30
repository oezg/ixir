defmodule LotteryTicket do
  @moduledoc false

  def bingo(ticket, win) do
    if count_mini_win(0, ticket) < win, do: "Loser!", else: "Winner!"
  end

  def count_mini_win(acc, []), do: acc

  def count_mini_win(acc, [head | tail]) do
    count_mini_win(acc + if(mini_win(head), do: 1, else: 0), tail)
  end

  def mini_win([string, number]) do
    Enum.any?(String.to_charlist(string), &(&1 == number))
  end
end
