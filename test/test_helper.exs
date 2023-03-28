ExUnit.start()
alias RecipesBot.Recipes

# Ecto.Adapters.SQL.Sandbox.mode(RecipesBot.Repo, :manual)
Hammox.defmock(RecipesImplMock, for: Recipes)
