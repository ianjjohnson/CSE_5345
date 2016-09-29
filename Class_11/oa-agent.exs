defmodule OA do

  #######
  # API #
  #######

  def new do
    { :ok, agent } = Agent.start_link(fn -> %{ location_of: %{} } end)
    agent
  end

  def enter_building(agent, person) do
    Agent.get_and_update(agent, __MODULE__, :record_entry, [ person ])
  end

  def leave_building(agent, person) do
    Agent.get_and_update(agent, __MODULE__, :record_exit, [person] )
  end

  def who_is_where(agent) do
    Agent.get(agent, &(&1.location_of))
  end

  ##################
  # Implementation #
  ##################

  def record_entry(state, person) do
    current_place = state.location_of[person]
    maybe_enter(current_place, state, person)
  end

  def record_exit(state, person) do
    current_place = state.location_of[person]
    maybe_exit(current_place, state, person)
  end

  defp maybe_exit(:in_building, state, person) do
    state = %{ location_of: Map.delete(state.location_of, person)}
    { { :ok, person }, state }
  end

  defp maybe_exit(_, state, person) do
    { { :not_in_building, person }, state }
  end

  defp maybe_enter(:in_building, state, person) do
    { { :in_building_twice, person }, state }
  end

  defp maybe_enter(_, state, person) do
    state = put_in(state, [:location_of, person], :in_building)
    { { :ok, person }, state }
  end

end
