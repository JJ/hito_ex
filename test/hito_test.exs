defmodule HitoTest do
  use ExUnit.Case
  doctest Hito

  test "greets the world" do
    to_test = "Iniciación"
    un_hito = %Hito{ file: "0.Hito", title: to_test, fecha: "20/10/2020" }
    assert un_hito.title == to_test
  end
end
