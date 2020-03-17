defmodule ISN.Mixfile do
  use Mix.Project

  @version "3.0.0"

  def project do
    [
      app: :isn,
      version: @version,
      elixir: "~> 1.0",
      deps: deps(),
      test_paths: ["test"],
      # Hex
      description: description(),
      package: package(),
      # Docs
      name: "ISN",
      docs: [
        source_ref: "v#{@version}",
        source_url: "https://github.com/nallwhy/isn",
        extras: ["README.md"]
      ]
    ]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:postgrex, :ecto]]
  end

  defp description do
    """
    Ecto types for the postgreSQL isn extension.
    """
  end

  defp package do
    [
      files: ~w(lib README.md mix.exs),
      maintainers: ["Jinkyou Son"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/nallwhy/isn"}
    ]
  end

  defp deps do
    [
      {:postgrex, ">= 0.15.0"},
      {:ecto_sql, ">= 3.0.0"},
      {:jason, ">= 0.0.0", only: :test},
      {:credo, "~> 1.3", only: :dev},
      {:ex_doc, "~> 0.21", only: :dev}
    ]
  end
end
