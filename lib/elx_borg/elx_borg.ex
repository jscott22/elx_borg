defmodule ElxBorg do

  alias ElxBorg.State

  use GenServer

  def start_link(_) do
    GenServer.start_link(__MODULE__, %State{}, name: __MODULE__)
  end

  def init(state) do
    {:ok, state}
  end

end
