defmodule ElxBorgTest do
  use ExUnit.Case
  doctest ElxBorg

  test "greets the world" do
    assert ElxBorg.hello() == :world
  end
end
