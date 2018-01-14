defmodule ElxBorg.State do
  defstruct [
    sensor_distance: %{
      front_left: nil,
      front_right: nil,
      back_left: nil,
      back_right: nil
    }
  ]
end