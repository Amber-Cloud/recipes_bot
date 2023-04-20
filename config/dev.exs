import Config

# Configure your database
config :recipes_bot, RecipesBot.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "recipes_bot_dev",
  stacktrace: true,
  show_sensitive_data_on_connection_error: true,
  pool_size: 10


# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

import_config "dev.secrets.exs"
