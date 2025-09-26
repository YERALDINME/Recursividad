defmodule Finanzas do
  @moduledoc """
  Módulo para calcular el balance final de una lista de transacciones financieras.
  Las transacciones son enteros:
    - Positivos = ingresos
    - Negativos = gastos
  """

  @doc """
  Calcula el balance de una lista de transacciones.

  Tipo de recursividad usada:
    - Directa (la función se llama a sí misma).
    - Lineal (una sola llamada recursiva por paso).
    - No de cola (queda pendiente la suma tras la llamada recursiva).

  ## Definición:
    - Caso base: [] → balance = 0
    - Caso recursivo: [cabeza | cola] → cabeza + balance(cola)
  """
  def balance([]), do: 0   # caso base
  def balance([transaccion | resto]), do: transaccion + balance(resto) # caso recursivo

  @doc """
  Ejecuta un ejemplo de prueba con una lista fija de transacciones.
  """
  def main do
    lista = [100, -50, 200, -30]
    IO.puts("Las transacciones son: #{inspect(lista)}")
    IO.puts("El balance final es: #{balance(lista)}")
  end
end

Finanzas.main()

