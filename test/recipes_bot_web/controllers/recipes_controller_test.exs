defmodule RecipesBotWeb.RecipesControllerTest do
  use RecipesBotWeb.ConnCase

  test "GET /get_random_recipes", %{conn: conn} do
    Hammox.expect(RecipesImplMock, :get_random_recipes, fn _ ->
      {:ok,
       [
         %RecipesBot.Structs.Recipe{
           id: 661_340,
           title: "Spinach Salad with Strawberry Vinaigrette",
           image: "https://spoonacular.com/recipeImages/661340-556x370.jpg",
           source_url: "https://spoonacular.com/spinach-salad-with-strawberry-vinaigrette-661340"
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
    end)

    conn = get(conn, "/get_random_recipes?number=3")

    assert json_response(conn, 200) == %{
             "recipes" => [
               %{
                 "id" => 661_340,
                 "image" => "https://spoonacular.com/recipeImages/661340-556x370.jpg",
                 "source_url" =>
                   "https://spoonacular.com/spinach-salad-with-strawberry-vinaigrette-661340",
                 "title" => "Spinach Salad with Strawberry Vinaigrette"
               },
               %{
                 "id" => 640_713,
                 "image" => "https://spoonacular.com/recipeImages/640713-556x370.jpg",
                 "source_url" => "https://spoonacular.com/creamy-tomato-soup-640713",
                 "title" => "Creamy Tomato Soup"
               },
               %{
                 "id" => 641_435,
                 "image" => "https://spoonacular.com/recipeImages/641435-556x370.jpg",
                 "source_url" =>
                   "https://spoonacular.com/dessert-apple-rings-with-cinnamon-cream-syrup-641435",
                 "title" => "Dessert Apple Rings With Cinnamon Cream Syrup"
               }
             ],
             "status" => 200
           }
  end
end
