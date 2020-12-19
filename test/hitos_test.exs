defmodule HitosTest do
  use ExUnit.Case
  doctest Hitos

  test "greets the world" do
    assert Hitos.hello() == :world
  end
end
