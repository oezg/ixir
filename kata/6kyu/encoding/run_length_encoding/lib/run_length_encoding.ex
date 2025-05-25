defmodule RunLengthEncoding do
  @moduledoc false

  def run_length_encoding(s) do
    String.codepoints(s)
    |> Enum.chunk_by(&Function.identity/1)
    |> Enum.map(&[length(&1), hd(&1)])
  end
end
