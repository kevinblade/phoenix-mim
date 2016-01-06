defmodule PhoenixMim.Mixfile do
  use Mix.Project

  def project do
    [app: :phoenix_mim,
     version: "0.0.1",
     elixir: "~> 1.0",
     elixirc_paths: elixirc_paths(Mix.env),
     compilers: [:phoenix, :gettext] ++ Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     aliases: aliases,
     deps: deps]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [mod: {PhoenixMim, []},
     applications: [:phoenix, :phoenix_html, :cowboy, :logger, :gettext,
                    :phoenix_ecto, :mariaex, :folsom, :lager, :ejabberd]]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_),     do: ["lib", "web"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
		[
		 {:proper, github: "manopapad/proper", override: true},
		 {:edown, github: "uwiger/edown", override: true},
		 {:protobuffs, github: "esl/erlang_protobuffs", override: true},
		 {:p1_utils, github: "processone/p1_utils", override: true},
		 {:meck, github: "eproxus/meck", override: true},
		 {:folsom, github: "boundary/folsom", override: true},
         {:cowboy, "1.0.0", override: true},
		 {:mongooseim, github: "esl/MongooseIM", branch: "phoenix-integration", override: true},
         {:phoenix, "~> 1.1.1"},
         {:phoenix_ecto, "~> 2.0"},
         {:mariaex, ">= 0.0.0"},
         {:phoenix_html, "~> 2.3"},
         {:phoenix_live_reload, "~> 1.0", only: :dev},
         {:gettext, "~> 0.9"}
		]
  end

  # Aliases are shortcut or tasks specific to the current project.
  # For example, to create, migrate and run the seeds file at once:
  #
  #     $ mix ecto.setup
  #
  # See the documentation for `Mix` for more info on aliases.
  defp aliases do
    ["ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
     "ecto.reset": ["ecto.drop", "ecto.setup"]]
  end
end
