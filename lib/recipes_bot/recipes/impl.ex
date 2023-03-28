defmodule RecipesBot.Recipes.Impl do
  alias RecipesBot.SpoonacularClient.Api.Recipes
  alias RecipesBot.SpoonacularClient.Connection
  alias RecipesBot.Structs.Recipe

  @behaviour RecipesBot.Recipes

  @impl RecipesBot.Recipes
  def get_random_recipe() do
    conn = Connection.new()

    with {:ok, response} <-
           Recipes.get_random_recipes(conn, number: 1),
         [recipe] = response.recipes,
         {:ok, recipe_full} <- Recipes.get_recipe_information(conn, recipe.id) do
      do_form_recipe_info(recipe_full)
    else
      {:error, _} -> {:error, "Random recipe request failed"}
      err -> {:error, err}
    end
  end

  @impl RecipesBot.Recipes
  def get_recipe_by_name(recipe_name) do
    conn = Connection.new()

    with {:ok, response} <-
           Recipes.search_recipes(conn, query: recipe_name, number: 1),
         [recipe] = response.results,
         {:ok, recipe_full} <- Recipes.get_recipe_information(conn, recipe.id) do
      do_form_recipe_info(recipe_full)
    else
      {:error, _} -> {:error, "Recipe request by name failed"}
      err -> {:error, err}
    end
  end

  @impl RecipesBot.Recipes
  def get_recipe_by_ingredients(ingredients) do
    conn = Connection.new()

    with {:ok, [recipe]} <-
           Recipes.search_recipes_by_ingredients(conn, ingredients: ingredients, number: 1),
         {:ok, recipe_full} <- Recipes.get_recipe_information(conn, recipe.id) do
      do_form_recipe_info(recipe_full)
    else
      {:error, _} -> {:error, "Recipe request by ingredients failed"}
      err -> {:error, err}
    end
  end

  defp do_form_recipe_info(recipe_full) do
    recipe_info = %Recipe{
      id: recipe_full.id,
      title: recipe_full.title,
      image: recipe_full.image,
      source_url: recipe_full.spoonacularSourceUrl
    }

    {:ok, recipe_info}
  end
end
