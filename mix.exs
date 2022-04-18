defmodule Apicripto.MixProject do
  use Mix.Project

  def project do
    [
      app: :apicripto,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      default_task: "mix_consumir_api"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpotion, "~> 3.1.0"}, #Request
      {:poison, "~> 5.0"}       #JSON
    ]
  end
end
