defmodule Parrot.Handlers.RootHandler do
  def init(_type, request, _options) do
    {:ok, request, :no_state}
  end

  def handle(request, state) do
    {<<"/", word::bitstring>>, _} = :cowboy_req.path(request)

    {:ok, request2} = :cowboy_req.reply(200, [{"content-type", "text/html"}], "Hello #{word}!\n", request)
    {:ok, request2, state}
  end

  def terminate(_reason, _request, _state) do
    :ok
  end
end
