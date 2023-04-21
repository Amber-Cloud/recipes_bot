import Config

# config/runtime.exs is executed for all environments, including
# during releases. It is executed after compilation and before the
# system starts, so it is typically used to load production configuration
# and secrets from environment variables or elsewhere. Do not define
# any compile-time configuration in here, as it won't be applied.
# The block below contains prod specific runtime configuration.


if config_env() == :prod do

  if env = System.get_env("SPOONACULAR_API_BASE_URI") do
    config :spoonacular_api, base_url: env
  end

  config :recipes_bot, spoonacular_api_key: System.get_env("SPOONACULAR_API_KEY")
  config :nadia, token: System.get_env("NADIA_TOKEN")
  config :recipes_bot, telegram_bot_name: System.get_env("TELEGRAM_BOT_NAME")


end
