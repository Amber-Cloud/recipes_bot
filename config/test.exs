import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :recipes_bot, RecipesBot.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "recipes_bot_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# Print only warnings and errors during test
config :logger, level: :warn

config :tesla, adapter: Tesla.Mock

config :recipes_bot, recipes_impl: RecipesImplMock

config :nadia, token: "token"
