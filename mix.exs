defmodule Parrot.Mixfile do
  use Mix.Project

  def project do
    [
      app: :parrot,
      escript: [main_module: Parrot],
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Parrot.Application, []}
    ]
  end

  defp deps do
    [
      cowboy: "~> 1.1"
    ]
  end
end
