defmodule Hitos do
  @moduledoc """
  Organización en hitos de una asignatura de informática.
  """
  defstruct [ :name, :baseURL, :hitos]
  
  @doc """
  Carga los hitos de un JSON

  """
  def carga( hitos_file \\ "hitos.json" ) do
    with {:ok, hitos_json} <- File.read(hitos_file),
	 {:ok, hitos } = Poison.decode( hitos_json), do: {:ok, %Hitos{ name: Map.get(hitos,"comment"),
								       baseURL: Map.get(hitos, "baseURL"),
								       hitos: Map.get(hitos, "hitos") } }
  end
end
