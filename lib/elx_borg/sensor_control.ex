defmodule ElxBorg.SensorControl do

  use GenServer

  defmodule State do
    defstruct [
      sensor_readings: %{
        front_left: nil,
        front_right: nil,
        back_left: nil,
        back_right: nil
      }
    ]
  end

  ### CLIENT

  def start_link(_) do
    GenServer.start_link(__MODULE__, %State{}, name: __MODULE__)
  end

  def get_readings() do
    GenServer.call(__MODULE__, :get_readings)
  end


  ### SERVER

  def init(state) do
    spawn(fn -> update_readings() end)
    {:ok, state}
  end

  def handle_call(:get_readings, _from, state) do
    {:reply, state.sensor_readings, state}
  end

  def handle_cast({:update_readings, updated_readings}, state) do
    {:noreply, %State{state | sensor_readings: updated_readings}}
  end

  ### PRIVATE

  defp update_readings() do

    Process.sleep(50)

    readings = read_sensors()

    updated_readings = %State{
      sensor_readings: %{
        front_right: readings.usm1,
        front_left: readings.usm2,
        back_right: readings.usm3,
        back_left: readings.usm4
      }
    }

    GenServer.cast(__MODULE__, {:update_readings, updated_readings})

    update_readings()
  end

  defp read_sensors() do
    UltraBorg.read_sensors()
  end
  
end