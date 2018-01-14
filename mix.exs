defmodule ElxBorg.MixProject do
  use Mix.Project

  def project do
    [
      app: :elx_borg,
      version: "0.1.0",
      elixir: "~> 1.6-dev",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:thunder_borg, :camera, :ultra_borg, :logger],
      mod: {ElxBorg.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:thunder_borg, path: "../thunder_borg", env: Mix.env()},
      {:ultra_borg, path: "../ultra_borg", env: Mix.env()},
      {:camera, path: "../camera", env: Mix.env()}
    ]
  end
end
