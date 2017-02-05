# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :scapula_web, ScapulaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "YOUGLN90t+uc5QL0UM+DEWPtyQc1TkA9ivmvVoCVZFRKkp32p+P9NxXFVP5k1XV0",
  render_errors: [view: ScapulaWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ScapulaWeb.PubSub,
           adapter: Phoenix.PubSub.PG2],
  storage: "/home/dan/uploaded"

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
