defmodule SwrDateSorter.Repo do
  use Ecto.Repo,
    otp_app: :swr_date_sorter,
    adapter: Ecto.Adapters.Postgres
end
