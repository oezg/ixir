defmodule DateSorter.Queries.Query do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:query_text, :string, autogenerate: false}
  schema "queries" do
    timestamps()
  end

  def changeset(query, attrs) do
    query
    |> cast(attrs, [:query_text])
    |> validate_required([:query_text])
  end
end
