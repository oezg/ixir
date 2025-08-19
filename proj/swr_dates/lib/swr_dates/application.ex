defmodule SwrDates.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      SwrDatesWeb.Telemetry,
      {DNSCluster, query: Application.get_env(:swr_dates, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: SwrDates.PubSub},
      # Start a worker by calling: SwrDates.Worker.start_link(arg)
      # {SwrDates.Worker, arg},
      # Start to serve requests, typically the last entry
      SwrDatesWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: SwrDates.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    SwrDatesWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
