defmodule Permutaciones do
  @moduledoc """
  Módulo para generar todas las permutaciones de una lista de elementos únicos
  usando recursividad pura.
  """

  @doc """
  Genera todas las permutaciones de una lista.

  - Caso base: lista vacía → `[[]]`
  - Caso recursivo:
      * Para cada elemento de la lista
      * Se elimina dicho elemento (`lista -- [elem]`)
      * Se permuta el resto recursivamente
      * Se agrega el elemento eliminado al inicio de cada permutación.

  Tipos de recursividad:
    - Directa: la función se llama a sí misma.
    - Múltiple (ramificación): cada elemento genera nuevas llamadas recursivas.
    - No de Cola: el trabajo de construir la lista ocurre después de la llamada.
  """
  def generar([]), do: [[]]  # caso base

  def generar(lista) do
    for elem <- lista,
        resto <- generar(lista -- [elem]) do
      [elem | resto]
    end
  end

  @doc """
  Ejecuta un ejemplo con datos quemados.
  """
  def main do
    lista = [1, 2, 3]
    IO.puts("Lista original: #{inspect(lista)}")
    IO.puts("Permutaciones:")
    IO.inspect(generar(lista))
  end
end

Permutaciones.main()
