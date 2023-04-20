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
    #add Repo, etc. if using here
    ]

    bot_children = [
      Telegram.Poller,
      Telegram.Matcher,
      Telegram.BotStateTracker
    ]

    children =
      if telegram_bot_name && Mix.env != :test do
        children ++ bot_children
      else
        children
      end

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: RecipesBot.Supervisor]
    Supervisor.start_link(children, opts)
  end

end
