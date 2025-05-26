defmodule LongestAlphabeticalSubstring do
  @moduledoc """
  Find the longest substring in alphabetical order.
  """

  @spec longest(binary()) :: binary()
  def longest(string) do
    {i, n} = search(string, 0, 0, 0, 0, "")
    String.slice(string, i, n)
  end

  defp search("", cur_idx, cur_len, max_idx, max_len, _old_chr) do
    if cur_len > max_len do
      {cur_idx, cur_len}
    else
      {max_idx, max_len}
    end
  end

  defp search(
         <<cur_chr::binary-size(1), rest::binary>>,
         cur_idx,
         cur_len,
         max_idx,
         max_len,
         old_chr
       ) do
    cond do
      cur_chr >= old_chr ->
        search(rest, cur_idx, cur_len + 1, max_idx, max_len, cur_chr)

      cur_len > max_len ->
        search(rest, cur_idx + cur_len, 1, cur_idx, cur_len, cur_chr)

      true ->
        search(rest, cur_idx + cur_len, 1, max_idx, max_len, cur_chr)
    end
  end
end
