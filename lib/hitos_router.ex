defmodule Hitos.Router do
  use Plug.Router

  @hitos Hitos.carga

  plug :match
  plug :dispatch

  get "/hello" do
    send_resp(conn, 200, "þor" )
  end

  match _ do
    send_resp(conn, 404, "¿Qué?")
  end

end
