defmodule Parrot.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      Parrot.Worker
    ]

    opts = [strategy: :one_for_one, name: Parrot.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
