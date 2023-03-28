defmodule RecipesBotWeb.RecipesController do
  use RecipesBotWeb, :controller
  alias RecipesBot.Recipes

  def get_random_recipes(conn, params) do
    number =
      params
      |> Map.get("number", "1")
      |> String.to_integer()

    case Recipes.impl().get_random_recipes(number) do
      {:error, reason} -> json(conn, %{status: 500, reason: reason})
      {:ok, recipes} -> json(conn, %{status: 200, recipes: recipes})
    end
  end
end
