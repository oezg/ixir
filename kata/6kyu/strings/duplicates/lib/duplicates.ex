defmodule Duplicates do
  @moduledoc false

  def dup(list), do: Enum.map(list, &Enum.join(Enum.dedup(String.codepoints(&1))))
end
