defmodule Hotel do
  @moduledoc """
  Módulo para calcular el total de días reservados en un hotel usando recursividad.
  """

  @doc """
  Calcula el total de días reservados a partir de una lista de reservas.

  Tipos de recursividad:
    - Directa: la función se invoca a sí misma.
    - Lineal: en cada paso solo hay una llamada recursiva.
    - No de cola: la suma se ejecuta después de la llamada recursiva.
  """
  def total_dias([]), do: 0   # caso base: lista vacía
  def total_dias([%{dias: d} | resto]), do: d + total_dias(resto) # caso recursivo

  @doc """
  Ejecuta un ejemplo con datos quemados.
  """
  def main do
    reservas = [
      %{cliente: "Juan", dias: 3},
      %{cliente: "Ana", dias: 5},
      %{cliente: "Luis", dias: 2}
    ]

    IO.puts("Reservas: #{inspect(reservas)}")
    IO.puts("Total de días reservados: #{total_dias(reservas)}")
  end
end

Hotel.main()
