defmodule LongestAlphabeticalSubstring do
  @moduledoc false

  def longest(string) do
    String.codepoints(string)
  end

  def longest_alphabetical_prefix(codepoints, len) do
    if len == length(codepoints) do
      codepoints
    else
      if Enum.at(codepoints, len - 1) < Enum.at(codepoints, len) do
        longest_alphabetical_prefix(codepoints, len + 1)
      else
        Enum.slice(codepoints, len)
      end
    end
  end
end
