defmodule Telegram.SendMessages do
  use Telegram.Commander
  alias RecipesBot.Recipes

  @callbacks [random_recipe: "/random_recipe", recipe_by_name: "/recipe_by_name", recipe_by_ingredients: "/recipe_by_ingredients"]

  def send_random_recipe(update) do
    case Recipes.impl().get_random_recipe() do
      {:error, _reason} ->
        send_message("Sorry, couldn't load recipe")

      {:ok, recipe} ->
        send_message("Here's what we found:")

        send_photo(recipe.image,
          caption: "#{recipe.title}\n\nInstructions here: #{recipe.source_url}",
          reply_markup: %{
            inline_keyboard: [
              [%{text: "New Random Recipe", callback_data: "/random_recipe"}]
            ]
          }
        )
    end
  end

  def send_recipe_by_name(update) do
    case Recipes.impl().get_recipe_by_name(update.message.text) do
      {:error, _reason} ->
        send_message("Sorry, couldn't load recipe")
      {:ok, recipe} ->
        send_message("Here's what we found:")

        send_photo(recipe.image,
          caption: "#{recipe.title}\n\nInstructions here: #{recipe.source_url}",
          reply_markup: %{
            inline_keyboard: [
              [%{text: "Find Another Recipe?", callback_data: "/recipe_by_name"}]
            ]
          }
        )
    end
  end

  def send_recipe_by_ingredients(update) do
    case Recipes.impl().get_recipe_by_ingredients(update.message.text) do
      {:error, _reason} ->
        send_message("Sorry, couldn't load recipe")
      {:ok, recipe} ->
        send_message("Here's what we found:")

        send_photo(recipe.image,
          caption: "#{recipe.title}\n\nInstructions here: #{recipe.source_url}",
          reply_markup: %{
            inline_keyboard: [
              [%{text: "Find Another Recipe?", callback_data: "/recipe_by_ingredients"}]
            ]
          }
        )
    end
  end

#  defp do_send_recipe(update, recipe, callback) do
#    callback = @callbacks[callback]
#    send_message("Here's what we found:")
#
#    send_photo(recipe.image,
#      caption: "#{recipe.title}\n\nInstructions here: #{recipe.source_url}",
#      reply_markup: %{
#        inline_keyboard: [
#          [%{text: "Find Another Recipe?", callback_data: callback}]
#        ]
#      }
#    )
#  end
end
