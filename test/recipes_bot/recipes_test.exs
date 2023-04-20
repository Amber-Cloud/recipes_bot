defmodule RecipesBot.RecipesTest do
  use ExUnit.Case
  alias RecipesBot.Recipes

  setup do
    Tesla.Mock.mock(fn
      %{method: :get, url: "https://api.spoonacular.com/recipes/random"} ->
        %Tesla.Env{
          status: 200,
          body: File.read!("test/recipes_bot/test_random_recipes_response.json")
        }
      %{method: :get, url: "https://api.spoonacular.com/recipes/661340/information"} ->
        %Tesla.Env{
          status: 200,
          body: File.read!("test/recipes_bot/test_recipe_information_response_661340.json")
        }
      %{method: :get, url: "https://api.spoonacular.com/recipes/complexSearch", query: [query: "carrot cake", number: 1, apiKey: nil]} ->
        %Tesla.Env{
          status: 200,
          body: File.read!("test/recipes_bot/test_recipe_by_name_response.json")
        }
      %{method: :get, url: "https://api.spoonacular.com/recipes/637184/information"} ->
        %Tesla.Env{
          status: 200,
          body: File.read!("test/recipes_bot/test_recipe_information_response_637184.json")
        }
      %{method: :get, url: "https://api.spoonacular.com/recipes/findByIngredients", query: [ingredients: "carrots, tomatoes, beef", number: 1, apiKey: nil]} ->
        %Tesla.Env{
          status: 200,
          body: File.read!("test/recipes_bot/test_recipe_by_ingredients_response.json")
        }
      %{method: :get, url: "https://api.spoonacular.com/recipes/634658/information"} ->
        %Tesla.Env{
          status: 200,
          body: File.read!("test/recipes_bot/test_recipe_information_response_634658.json")
        }
    end)

    :ok
  end

  # Random recipe
  test "Random recipe - Successful API call returns a tuple with a recipe" do
    assert Recipes.Impl.get_random_recipe() ==
             {:ok,
                %RecipesBot.Structs.Recipe{
                  id: 661_340,
                  title: "Spinach Salad with Strawberry Vinaigrette",
                  image: "https://spoonacular.com/recipeImages/661340-556x370.jpg",
                  source_url:
                    "https://spoonacular.com/spinach-salad-with-strawberry-vinaigrette-661340"
                }
             }
  end

  test "Random recipe - Unsuccessful random recipe API call returns a tuple with an error and reason" do
    Tesla.Mock.mock(fn
      %{method: :get, url: "https://api.spoonacular.com/recipes/random"} ->
        %Tesla.Env{
          status: 400
        }
    end)
    assert Recipes.Impl.get_random_recipe() == {:error, "Random recipe request failed"}
  end

  test "Random recipe - Unsuccessful recipe info API call returns a tuple with an error and reason" do
    Tesla.Mock.mock(fn
      %{method: :get, url: "https://api.spoonacular.com/recipes/random"} ->
        %Tesla.Env{
          status: 200,
          body: File.read!("test/recipes_bot/test_random_recipes_response.json")
        }
      %{method: :get, url: "https://api.spoonacular.com/recipes/661340/information"} ->
        %Tesla.Env{
          status: 400
        }
    end)
    assert Recipes.Impl.get_random_recipe() == {:error, "Random recipe request failed"}
  end

  # Recipe by name
  test "Recipe by name - Successful API call returns a tuple with a recipe" do
    assert Recipes.Impl.get_recipe_by_name("carrot cake") ==
             {:ok,
               %RecipesBot.Structs.Recipe{
                 id: 637184,
                 title: "Carrot Cake Pancakes",
                 image: "https://spoonacular.com/recipeImages/637184-556x370.jpg",
                 source_url:
                   "https://spoonacular.com/carrot-cake-pancakes-637184"
               }
             }
  end

  test "Recipe by name - Unsuccessful by name API call returns a tuple with an error and reason" do
    Tesla.Mock.mock(fn
      %{method: :get, url: "https://api.spoonacular.com/recipes/complexSearch", query: [query: "carrot cake", number: 1, apiKey: nil]} ->
        %Tesla.Env{
          status: 400
        }
    end)
    assert Recipes.Impl.get_recipe_by_name("carrot cake") == {:error, "Recipe request by name failed"}
  end

  test "Recipe by name - Unsuccessful recipe info API call returns a tuple with an error and reason" do
    Tesla.Mock.mock(fn
      %{method: :get, url: "https://api.spoonacular.com/recipes/complexSearch", query: [query: "carrot cake", number: 1, apiKey: nil]} ->
        %Tesla.Env{
          status: 200,
          body: File.read!("test/recipes_bot/test_recipe_by_name_response.json")
        }
      %{method: :get, url: "https://api.spoonacular.com/recipes/637184/information"} ->
        %Tesla.Env{
          status: 400
        }
    end)
    assert Recipes.Impl.get_recipe_by_name("carrot cake") == {:error, "Recipe request by name failed"}
  end

  # Recipe by ingredients
  test "Recipe by ingredients - Successful API call returns a tuple with a recipe" do
    assert Recipes.Impl.get_recipe_by_ingredients("carrots, tomatoes, beef") ==
             {:ok,
               %RecipesBot.Structs.Recipe{
                 id: 634658,
                 title: "Beef rolls with vegetables",
                 image: "https://spoonacular.com/recipeImages/634658-556x370.jpg",
                 source_url:
                   "https://spoonacular.com/beef-rolls-with-vegetables-634658"
               }
             }
  end

  test "Recipe by ingredients - Unsuccessful by ingredients API call returns a tuple with an error and reason" do
    Tesla.Mock.mock(fn
      %{method: :get, url: "https://api.spoonacular.com/recipes/findByIngredients", query: [ingredients: "carrots, tomatoes, beef", number: 1, apiKey: nil]} ->
        %Tesla.Env{
          status: 400
        }
    end)
    assert Recipes.Impl.get_recipe_by_ingredients("carrots, tomatoes, beef") == {:error, "Recipe request by ingredients failed"}
  end

  test "Recipe by ingredients - Unsuccessful recipe info API call returns a tuple with an error and reason" do
    Tesla.Mock.mock(fn
      %{method: :get, url: "https://api.spoonacular.com/recipes/findByIngredients", query: [ingredients: "carrots, tomatoes, beef", number: 1, apiKey: nil]} ->
        %Tesla.Env{
          status: 200,
          body: File.read!("test/recipes_bot/test_recipe_by_ingredients_response.json")
        }
      %{method: :get, url: "https://api.spoonacular.com/recipes/634658/information"} ->
        %Tesla.Env{
          status: 400
        }
    end)
    assert Recipes.Impl.get_recipe_by_ingredients("carrots, tomatoes, beef") == {:error, "Recipe request by ingredients failed"}
  end
end
