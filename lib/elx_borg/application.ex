defmodule ElxBorg.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Starts a worker by calling: ElxBorg.Worker.start_link(arg)
      # {ElxBorg.Worker, arg},
      {ElxBorg.SensorControl, nil}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ElxBorg.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
