defmodule Telegram.BotStateTrackerTest do
  use ExUnit.Case
  alias Telegram.BotStateTracker

  setup do
    start_supervised!(Telegram.BotStateTracker)
    :ok
  end

  test "Can get the state of the process - get recipe by name" do
    user_id = 343021710
    BotStateTracker.update_state(user_id, :recipe_by_name)
    assert BotStateTracker.get_state(user_id) == :recipe_by_name
  end

  test "Can get the state of the process - get recipe by ingredients" do
    user_id = 343021710
    BotStateTracker.update_state(user_id, :recipe_by_ingredients)
    assert BotStateTracker.get_state(user_id) == :recipe_by_ingredients
  end

  test "Can get the state of the process - no active process" do
    user_id = 343021710
    assert BotStateTracker.get_state(user_id) == :none
  end

  test "Updating pre-existing state" do
    user_id = 343021710
    #pre-existing state
    BotStateTracker.update_state(user_id, :recipe_by_name)
    #new state - e.g. user pressed another button
    BotStateTracker.update_state(user_id, :recipe_by_ingredients)
    assert BotStateTracker.get_state(user_id) == :recipe_by_ingredients
  end

  test "State can be deleted (reset)" do
    user_id = 343021710
    BotStateTracker.update_state(user_id, :recipe_by_name)
    assert BotStateTracker.reset_state(user_id) == :state_deleted
    assert BotStateTracker.get_state(user_id) == :none
  end
end