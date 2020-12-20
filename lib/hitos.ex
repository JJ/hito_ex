defmodule Hitos do
  @moduledoc """
  Organización en hitos de una asignatura de informática.
  """
  defstruct [ :name, :baseURL, :hitos]
  
  @doc """
  Carga los hitos de un JSON

  """
  def carga( hitos_file \\ "hitos.json" ) do
    {:ok, hitos} = File.open(hitos_file, [:read])
    hitos
  end
end
