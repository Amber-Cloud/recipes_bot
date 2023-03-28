defmodule RecipesBot.Recipes do
  alias RecipesBot.Recipes.Impl
  alias RecipesBot.Structs.Recipe

  @callback get_random_recipe() :: {:ok, [%Recipe{}]} | {:error, String.t()}
  @callback get_recipe_by_name(String.t()) :: {:ok, [%Recipe{}]} | {:error, String.t()}
  @callback get_recipe_by_ingredients(String.t()) :: {:ok, [%Recipe{}]} | {:error, String.t()}

  def impl() do
    Application.get_env(:recipes_bot, :recipes_impl, Impl)
  end
end
