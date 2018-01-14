use Mix.Config

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

config :thunder_borg,
  i2c: ElixirALE.I2C,
  children: [
    {ThunderBorg.I2C, []},
    {ThunderBorg, []}
  ]

config :ultra_borg,
  i2c: ElixirALE.I2C,
  children: [
    {UltraBorg.I2C, []},
    {UltraBorg, []}
  ]

import Supervisor.Spec

config :camera,
  camera: Picam,
  children: [
    worker(Picam.Camera, [])
  ]
