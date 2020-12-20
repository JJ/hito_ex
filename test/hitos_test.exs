defmodule HitosTest do
  use ExUnit.Case
  doctest Hitos

  test "greets the world" do
    hitos = Hitos.carga()
    assert hitos.baseURL == "https://ivgrx.tech/hitos"
  end
end
