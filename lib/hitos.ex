defmodule Hitos do
  use json
  @moduledoc """
  Organización en hitos de una asignatura de informática.
  """
  defstruct [ :name, :baseURL, :hitos]
  
  @doc """
  Carga los hitos de un JSON

  """
  def carga( hitos_file \\ "hitos.json" ) do
    {:ok, hitos_json} = File.open(hitos_file, [:read])
    {status, hitos } = JSON.decode( hitos_json)
    hitos
  end
end
