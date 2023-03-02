defmodule ExSpec.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_spec,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package()
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
      {:ex_doc, "~> 0.27", only: :dev, runtime: false}
    ]
  end

  defp description do
    """
    A macro to transform ExUnit assertions into BDD style "expectations".
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Dayton Nolan"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/daytonn/ex_spec"}
    ]
  end
end
