defmodule Telegram.Commands do
  use Telegram.Router
  use Telegram.Commander
  alias RecipesBot.Recipes

  command("start") do
    Logger.log(:info, "Command /start received")

    send_message("Hello, " <> update.message.from.username <> "\nWhat would you like to find?",
      reply_markup: %{
        inline_keyboard: [
          [%{text: "Random Recipe", callback_data: "/random_recipe"}],
          [%{text: "Recipe by Name", callback_data: "/random_recipe"}],
          [%{text: "Recipe by Ingredient", callback_data: "/random_recipe"}]
        ]
      }
    )
  end

  callback_query_command "random_recipe" do
    Logger.log(:info, "Callback Query Command /random_recipe")

    case Recipes.impl().get_random_recipe() do
      {:error, reason} ->
        send_message("Sorry, couldn't load recipe")

      {:ok, recipe} ->
        send_message("Here's what we found:")

        send_photo(recipe.image,
          caption: "#{recipe.title}\n\nInstructions here: #{recipe.source_url}",
          reply_markup: %{
            inline_keyboard: [
              query = [%{text: "New Random Recipe", callback_data: "/random_recipe"}]
            ]
          }
        )
    end
  end

  callback_query_command "recipe_by_name" do
    Logger.log(:info, "Callback Query Command /recipe_by_name")

    send_message("Please enter the recipe name:")
  end
end
