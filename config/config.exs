# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :engineer_battler_api,
  ecto_repos: [EngineerBattlerApi.Repo]

# Configures the endpoint
config :engineer_battler_api, EngineerBattlerApi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "e5Zc7m1cJhqXgKPpR6zcXXmQngXvvoT/9UzQiQgZMweYp25A8SHxesL/lkhTSS7N",
  render_errors: [view: EngineerBattlerApi.ErrorView, accepts: ~w(html json)],
  pubsub: [name: EngineerBattlerApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :exq,
  host: "localhost",
  port: 6379,
  namespace: "exq"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
