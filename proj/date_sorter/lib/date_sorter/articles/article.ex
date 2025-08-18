defmodule DateSorter.Articles.Article do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:url, :string, autogenerate: false}
  schema "articles" do
    field :title, :string
    field :date, :utc_datetime
    field :query_text, :string

    timestamps()
  end

  def changeset(article, attrs) do
    article
    |> cast(attrs, [:url, :title, :date, :query_text])
    |> validate_required([:url, :title, :date, :query_text])
  end
end
