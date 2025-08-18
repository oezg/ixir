defmodule Linearity do
  @moduledoc false

  def date_sorted(q), do: "https://www.swr.de/swr-suche-100.html?swx_q=#{q}&swx_sort=date"

  def document(url) do
    case HTTPoison.get(url) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} -> body
      _ -> "Poison not successful"
    end
  end

  def htmlement(doc) do
    case Floki.parse_document(doc) do
    end
  end

  def run() do
    case HTTPoison.get(to_url("balingen")) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        case Floki.parse_document(body) do
          {:ok, tree} ->
            Floki.find(tree, "h2.hgroup a")
            |> Enum.take(10)
            |> Enum.map(fn {"a", [_rel, {"href", link}], _span} -> link end)

          _ ->
            "Error Floki"
        end

      _ ->
        "Error Poison"
    end
  end
end
