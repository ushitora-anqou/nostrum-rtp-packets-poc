defmodule Foobar.MixProject do
  use Mix.Project

  def project do
    [
      app: :foobar,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {FoobarApp, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:nostrum,
       git: "https://github.com/ushitora-anqou/nostrum.git", tag: "accept-rtp-packets-wo-header"}
      # {:nostrum,
      # git: "https://github.com/ushitora-anqou/nostrum.git",
      # ref: "5d22693f62f7cfab394637c70b1e52eaa7da7132"}
    ]
  end
end
