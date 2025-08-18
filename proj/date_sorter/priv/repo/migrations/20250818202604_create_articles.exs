defmodule DateSorter.Repo.Migrations.CreateArticles do
  use Ecto.Migration

  def change do
    create table(:articles, primary_key: false) do
      add :url, :string, primary_key: true
      add :title, :string, null: false
      add :date, :utc_datetime, null: false
      add :query_text, :string, null: false

      timestamps()
    end

    create index(:articles, [:query_text])
  end
end
