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
    end)

    :ok
  end

  test "Successful API call returns a tuple with a list of recipes" do
    assert Recipes.impl().get_random_recipes(3) ==
             {:ok,
              [
                %RecipesBot.Structs.Recipe{
                  id: 661_340,
                  title: "Spinach Salad with Strawberry Vinaigrette",
                  image: "https://spoonacular.com/recipeImages/661340-556x370.jpg",
                  source_url:
                    "https://spoonacular.com/spinach-salad-with-strawberry-vinaigrette-661340"
                },
                %RecipesBot.Structs.Recipe{
                  id: 640_713,
                  title: "Creamy Tomato Soup",
                  image: "https://spoonacular.com/recipeImages/640713-556x370.jpg",
                  source_url: "https://spoonacular.com/creamy-tomato-soup-640713"
                },
                %RecipesBot.Structs.Recipe{
                  id: 641_435,
                  title: "Dessert Apple Rings With Cinnamon Cream Syrup",
                  image: "https://spoonacular.com/recipeImages/641435-556x370.jpg",
                  source_url:
                    "https://spoonacular.com/dessert-apple-rings-with-cinnamon-cream-syrup-641435"
                }
              ]}
  end

  test "Unsuccessful API call returns a tuple with an error and reason" do
    Tesla.Mock.mock(fn
      %{method: :get, url: "https://api.spoonacular.com/recipes/random"} ->
        %Tesla.Env{
          status: 400
        }
    end)

    assert Recipes.impl().get_random_recipes(3) == {:error, "Random recipe request failed"}
  end
end
