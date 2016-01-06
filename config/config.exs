# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :phoenix_mim, PhoenixMim.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "/V7SyDkvIE/dtRZLJVr9ZrSavmI5uWqGuuEbmbVUwCPVtz9chDsLc5dLZbutcpCT",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: PhoenixMim.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :ejabberd,
  file: "etc/ejabberd.cfg",
  log_path: 'log/ejabberd.log'

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false
