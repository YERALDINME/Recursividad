defmodule Tienda do
  @moduledoc """
  Módulo para calcular la cantidad total de productos pedidos en una tienda usando recursividad.
  """

  @doc """
  Calcula el total de cantidades de productos pedidos.
  """
  def total_cantidades([]), do: 0   # Caso base: lista vacía

  # Caso recursivo
  # - Recursividad Directa: la función se llama a sí misma.
  # - Recursividad Lineal: solo una llamada recursiva en cada paso.
  # - Recursividad No de Cola: la suma se hace después de la llamada recursiva.
  def total_cantidades([%{cantidad: c} | resto]) do
    c + total_cantidades(resto)
  end

  @doc """
  Ejecuta un ejemplo con datos quemados.
  """
  def main do
    pedidos = [
      %{producto: "Camisa", cantidad: 4},
      %{producto: "Pantalón", cantidad: 2},
      %{producto: "Zapatos", cantidad: 3}
    ]

    IO.puts("Pedidos: #{inspect(pedidos)}")
    IO.puts("Cantidad total de productos pedidos: #{total_cantidades(pedidos)}")
  end
end

Tienda.main()

