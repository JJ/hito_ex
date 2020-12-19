defmodule HitoTest do
  use ExUnit.Case
  doctest Hito

  test "greets the world" do
    to_test = "Iniciación"
    un_hito = %Hito{ URL: "0.Hito", descripcion: to_test, fecha: "20/10/2020" }
    assert un_hito.descripcion == to_test
  end
end
