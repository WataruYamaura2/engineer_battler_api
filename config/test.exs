use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :engineer_battler_api, EngineerBattlerApi.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :engineer_battler_api, EngineerBattlerApi.Repo,
  adapter: Ecto.Adapters.MySQL,
  username: "root",
  password: "",
  database: "engineer_battler_api_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
