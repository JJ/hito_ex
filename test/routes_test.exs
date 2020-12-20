defmodule Hitos.RoutesTest do
  use ExUnit.Case
  use Plug.Test

  alias Hitos.Router

  @opts Router.init([])

  test "carga el fichero" do
    conn = :get |> conn("/hello", "") |> Router.call(@opts)

    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == "þor"
  end
end
