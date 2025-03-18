defmodule Jc6.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      Jc6Web.Telemetry,
      Jc6.Repo,
      {DNSCluster, query: Application.get_env(:jc6, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Jc6.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Jc6.Finch},
      # Start a worker by calling: Jc6.Worker.start_link(arg)
      # {Jc6.Worker, arg},
      # Start to serve requests, typically the last entry
      Jc6Web.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Jc6.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    Jc6Web.Endpoint.config_change(changed, removed)
    :ok
  end
end
