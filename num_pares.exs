defmodule SumaPares do
  @moduledoc """
  Módulo para sumar solo los números pares de una lista usando recursividad.
  """

  @doc """
  Suma únicamente los números pares de una lista.
  """
  def sumar([]), do: 0   # Caso base: lista vacía

  def sumar([h | t]) do
    if rem(h, 2) == 0 do
      # Caso recursivo con número par
      # - Recursividad Directa
      # - Recursividad Lineal
      # - Recursividad No de Cola (la suma ocurre después de la llamada recursiva)
      h + sumar(t)
    else
      # Caso recursivo con número impar
      # - Recursividad Directa
      # - Recursividad Lineal
      # - Recursividad de Cola (la llamada recursiva es la última operación)
      sumar(t)
    end
  end

  @doc """
  Ejecuta un ejemplo con datos quemados.
  """
  def main do
    lista = [1, 2, 3, 4, 5, 6, 7, 8]
    IO.puts("Lista: #{inspect(lista)}")
    IO.puts("Suma de pares: #{sumar(lista)}")
  end
end

SumaPares.main()
