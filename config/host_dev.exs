use Mix.Config

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

config :thunder_borg,
  i2c: DummyNerves.I2C,
  children: []

config :ultra_borg,
  i2c: DummyNerves.I2C,
  children: []

config :camera,
  camera: DummyNerves.Camera,
  children: []