defmodule Lyex.MixProject do
  use Mix.Project

  def project do
    [
      app: :lyex,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:erlsom, "~> 1.4"},
      {:httpoison, "~> 1.5"},
      {:accessible, "~> 0.2"}
    ]
  end
end
