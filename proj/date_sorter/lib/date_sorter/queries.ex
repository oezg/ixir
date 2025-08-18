defmodule DateSorter.Queries do
  import Ecto.Query, warn: false

  alias DateSorter.Repo
  alias DateSorter.Queries.Query

  @doc """
  Checks if the query has already been performed today.
  Returns the query struct or nil.
  """
  def already_queried_today?(query_text) do
    today = Date.utc_today()

    from(q in Query,
      where: q.query_text == ^query_text and fragment("date(?)", q.inserted_at) == ^today
    )
    |> Repo.one()
  end
end
