defmodule DateSorter.Repo do
  use Ecto.Repo,
    otp_app: :date_sorter,
    adapter: Ecto.Adapters.Postgres
end
