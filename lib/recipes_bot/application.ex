defmodule RecipesBot.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    telegram_bot_name = Application.get_env(:recipes_bot, :telegram_bot_name)

    unless String.valid?(telegram_bot_name) do
      IO.warn("""
      Env not found Application.get_env(:recipes_bot, :telegram_bot_name)
      This will give issues when generating commands
      """)
    end

    if telegram_bot_name == "" do
      IO.warn("An empty bot_name env will make '/anycommand@' valid")
    end

    children = [
      # Start the Ecto repository
      # RecipesBot.Repo,
      # Start the Telemetry supervisor
      RecipesBotWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: RecipesBot.PubSub},
      # Start the Endpoint (http/https)
      RecipesBotWeb.Endpoint
      # Start a worker by calling: RecipesBot.Worker.start_link(arg)
      # {RecipesBot.Worker, arg}
    ]

    bot_children = [
      Telegram.Poller,
      Telegram.Matcher,
      Telegram.BotStateTracker
    ]

    children =
      if telegram_bot_name do
        children ++ bot_children
      end

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: RecipesBot.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    RecipesBotWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
