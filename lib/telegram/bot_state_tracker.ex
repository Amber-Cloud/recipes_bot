defmodule Telegram.BotStateTracker do
  use GenServer

  @spec start_link(keyword()) :: {:ok, pid()} | {:error, atom()}
  def start_link(init_arg) do
    GenServer.start_link(__MODULE__, init_arg, name: StateTracker)
  end

  def get_state(user_id) do
    GenServer.call(StateTracker, {:get_state, user_id})
  end

  def update_state(user_id, command) do
    GenServer.call(StateTracker, {:update_state, %{user_id => command}})
  end

  def reset_state(user_id) do
    GenServer.call(StateTracker, {:reset_state, user_id})
  end

  # Server callbacks
  @impl GenServer
  def init(_init_arg) do
    state = %{}
    {:ok, state}
  end

  @impl GenServer
  def handle_call({:get_state, user_id}, _from, state) do
    if state[user_id] do
      {:reply, state[user_id], state}
    else
      {:reply, :none, state}
    end
  end

  def handle_call({:update_state, new_state}, _from, state) do
    {:reply, :new_state_added, Map.merge(state, new_state)}
  end

  def handle_call({:reset_state, user_id}, _from, state) do
    new_state = Map.delete(state, user_id)
    {:reply, :state_deleted, new_state}
  end
end
