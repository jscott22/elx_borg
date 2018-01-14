use Mix.Config

# Print only warnings and errors during test
config :logger, level: :warn

config :thunder_borg,
  i2c: DummyNerves.I2C,
  children: []

config :ultra_borg,
  i2c: DummyNerves.I2C,
  children: []

config :camera,
  camera: DummyNerves.Camera,
  children: []
