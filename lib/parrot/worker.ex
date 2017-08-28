defmodule Parrot.Worker do
  use GenServer

  def start_link(args) do
    GenServer.start_link(__MODULE__, args, name: __MODULE__)
  end

  def init(args) do
    {:ok, _} = :cowboy.start_http(:http, 100, [port: 8080], [env: [dispatch: dispatch()]])

    {:ok, args}
  end

  defp dispatch do
    path_list = [
      {"/[:word]", Parrot.Handlers.RootHandler, []}
    ]

    :cowboy_router.compile([_: path_list])
  end
end
