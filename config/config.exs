# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :recipes_bot, spoonacular_base_url: "https://api.spoonacular.com"

config :recipes_bot,
  ecto_repos: [RecipesBot.Repo]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]


# Telegram Bot API Wrapper Nadia
config :nadia,
  recv_timeout: 10

config :recipes_bot, spoonacular_api_key: System.get_env("SPOONACULAR_API_KEY")
config :nadia, token: System.get_env("TELEGRAM_HTTP_API_KEY")
config :recipes_bot, telegram_bot_name: "TELEGRAM_BOT_NAME"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
