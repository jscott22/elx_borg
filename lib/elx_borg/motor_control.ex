defmodule ElxBorg.MotorControl do
  
  def drive(degree, speed) do
    ThunderBorg.drive(degree, speed)
  end

  def stop() do
    IO.puts("Stopping")
    ThunderBorg.stop()
  end

  def debug() do
    ThunderBorg.debug()
  end
  
end