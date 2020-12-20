defmodule HitosTest do
  use ExUnit.Case
  doctest Hitos

  test "carga el fichero" do
    {:ok, hitos } = Hitos.carga()
    assert hitos.baseURL == "https://ivgrx.tech/hitos"
  end
end
