defmodule SwrDateSorter.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      SwrDateSorterWeb.Telemetry,
      SwrDateSorter.Repo,
      {DNSCluster, query: Application.get_env(:swr_date_sorter, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: SwrDateSorter.PubSub},
      # Start a worker by calling: SwrDateSorter.Worker.start_link(arg)
      # {SwrDateSorter.Worker, arg},
      # Start to serve requests, typically the last entry
      SwrDateSorterWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: SwrDateSorter.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    SwrDateSorterWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
