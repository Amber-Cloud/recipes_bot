defmodule RecipesBot.Repo do
  use Ecto.Repo,
    otp_app: :recipes_bot,
    adapter: Ecto.Adapters.Postgres
end
