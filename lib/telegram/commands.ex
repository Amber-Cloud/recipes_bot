defmodule Telegram.Commands do
  use Telegram.Router
  use Telegram.Commander
  alias RecipesBot.Recipes
  alias Telegram.BotStateTracker
  alias Telegram.SendMessages

  command("start") do
    Logger.log(:info, "Command /start received")
    IO.inspect(update)

    send_message("Hello, " <> update.message.from.username <> "\nWhat would you like to find?",
      reply_markup: %{
        inline_keyboard: [
          [%{text: "Random Recipe", callback_data: "/random_recipe"}],
          [%{text: "Recipe by Name", callback_data: "/recipe_by_name"}],
          [%{text: "Recipe by Ingredients", callback_data: "/recipe_by_ingredients"}]
        ]
      }
    )
  end

  callback_query_command "random_recipe" do
    Logger.log(:info, "Callback Query Command /random_recipe")
    SendMessages.send_random_recipe(update)
  end

  callback_query_command "recipe_by_name" do
    Logger.log(:info, "Callback Query Command /recipe_by_name")
    send_message("Please enter the recipe name:")
    BotStateTracker.update_state(update.callback_query.from.id, :recipe_by_name)
  end

  callback_query_command "recipe_by_ingredients" do
    Logger.log(:info, "Callback Query Command /recipe_by_ingredients")
    send_message("Please enter the ingredients separated by commas:")
    BotStateTracker.update_state(update.callback_query.from.id, :recipe_by_ingredients)
  end


  message do
    Logger.log(:info, "Received user input")
    user_id = update.message.from.id
    case BotStateTracker.get_state(user_id) do
      :recipe_by_name -> SendMessages.send_recipe_by_name(update)
      :recipe_by_ingredients -> SendMessages.send_recipe_by_ingredients(update)
      :none -> send_message("Please select an action from the menu")
    end

    BotStateTracker.reset_state(user_id)
  end
end
