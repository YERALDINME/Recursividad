defmodule Contador do
  @moduledoc """
  Módulo para contar elementos de una lista usando recursividad.
  """

  @doc """
  Cuenta cuántos elementos tiene una lista.

  ## Definición:
    - Caso base: la lista vacía [] tiene 0 elementos.
    - Caso recursivo: una lista [cabeza | cola] tiene 1 + elementos de la cola.
  """

  # Caso base
  def contar([]), do: 0

  # Caso recursivo
  # Aquí se utiliza:
  # - Recursividad Directa: la función se llama a sí misma.
  # - Recursividad Lineal: cada llamada genera una sola llamada adicional.
  # - Recursividad No de Cola: porque la suma (1 + ...) se hace después de la llamada recursiva.
  def contar([_ | cola]) do
    1 + contar(cola)
  end

  @doc """
  Ejecuta un ejemplo de prueba.
  """
  def main do
    lista = [10, "juan", :hola, 20, 30, "Yerarl", 40, 50]
    IO.puts("La lista es: #{inspect(lista)}")
    IO.puts("Cantidad de elementos: #{contar(lista)}")
  end
end

Contador.main()
