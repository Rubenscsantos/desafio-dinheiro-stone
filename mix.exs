defmodule DesafioStone.Mixfile do
  use Mix.Project

  def project do
    [
      app: :desafiodinheirostone,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :mix_test_watch, :mock],
      mod: {DesafioStone.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      #{:currency_conversion, "~> 0.3.1"},
      {:credo, "~> 0.8.10"},
      {:mix_test_watch, "~> 0.5.0"},
      {:mock, "~> 0.3.1"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end
