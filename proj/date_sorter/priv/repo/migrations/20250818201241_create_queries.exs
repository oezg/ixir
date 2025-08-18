defmodule DateSorter.Repo.Migrations.CreateQueries do
  use Ecto.Migration

  def change do
    create table(:queries, primary_key: false) do
      add :query_text, :string, primary_key: true

      timestamps()
    end
  end
end
