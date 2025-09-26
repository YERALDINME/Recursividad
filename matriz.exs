defmodule Matriz do
  @moduledoc """
  Módulo para trabajar con matrices representadas como listas de listas en Elixir.
  Incluye una función recursiva para sumar todos los elementos de la matriz.
  """

  @doc """
  Suma todos los elementos de una matriz de forma recursiva.
  """
  def sumar([]), do: 0  # Caso base: matriz vacía

  # Caso recursivo
  # - Recursividad Directa: la función se llama a sí misma.
  # - Recursividad Lineal: solo una llamada recursiva en cada paso.
  # - Recursividad No de Cola: porque después de la llamada recursiva se hace la suma.
  def sumar([fila | resto]) do
    sumar_fila(fila) + sumar(resto)
  end

  @doc """
  Suma todos los elementos de una fila de forma recursiva.
  """
  defp sumar_fila([]), do: 0  # Caso base: fila vacía

  # Caso recursivo
  # - Recursividad Directa: la función se llama a sí misma.
  # - Recursividad Lineal: solo una llamada recursiva en cada paso.
  # - Recursividad No de Cola: porque la suma se realiza después de la llamada recursiva.
  defp sumar_fila([x | xs]) do
    x + sumar_fila(xs)
  end

  def main do
    matriz = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    IO.puts("Matriz: #{inspect(matriz, charlists: :as_lists)}")
    IO.puts("Suma total: #{sumar(matriz)}")
  end
end

Matriz.main()
