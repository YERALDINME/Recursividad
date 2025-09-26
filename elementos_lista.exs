defmodule Busqueda do
  @moduledoc """
  Módulo para buscar un elemento dentro de una lista usando recursividad.
  """

  @doc """
  Determina si un elemento está presente en la lista.

  ## Definición:
    - Caso base 1: [] → false (lista vacía, no encontrado)
    - Caso base 2: [x | _] cuando x == elem → true (encontrado)
    - Caso recursivo: [_ | resto] → buscar(elem, resto)
  """
  def buscar(_, []), do: false  # caso base: lista vacía
  def buscar(elem, [elem | _]), do: true  # caso base: encontrado

  # Caso recursivo
  # - Recursividad Directa: se llama a sí misma.
  # - Recursividad Lineal: solo una llamada recursiva por vez.
  # - Recursividad de Cola: la llamada recursiva es la última operación.
  def buscar(elem, [_ | resto]), do: buscar(elem, resto)

  @doc """
  Ejecuta un ejemplo con datos quemados.
  """
  def main do
    lista = [3, 7, 9, 15, 20]
    IO.puts("Lista: #{inspect(lista)}")

    IO.puts("¿Está el 9 en la lista? #{buscar(9, lista)}")
    IO.puts("¿Está el 5 en la lista? #{buscar(5, lista)}")
  end
end

Busqueda.main()
