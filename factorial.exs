defmodule Factorial do
  @moduledoc """
  Módulo para calcular el factorial de un número entero usando recursividad.
  """

  @doc """
  Calcula el factorial de un número entero no negativo.

  ## Definición:
    - Caso base: 0! = 1
    - Caso recursivo: n! = n * (n-1)!
  """
  # Caso base: factorial de 0 es 1
  def factorial(0) do
    1
  end

  # Caso recursivo
  # - Recursividad Directa: se llama a sí misma.
  # - Recursividad Lineal: solo una llamada recursiva en cada paso.
  # - Recursividad No de Cola: la multiplicación se realiza después de la llamada recursiva.
  def factorial(n) when n > 0 do
    n * factorial(n - 1)
  end

  # Control de error: número negativo
  def factorial(n) when n < 0 do
    {:error, "No se puede calcular el factorial de un número negativo"}
  end

  @doc """
  Pide un número al usuario y muestra el resultado del factorial.
  """
  def main do
    numero =
      IO.gets("Ingrese un número entero: ")
      |> String.trim()
      |> String.to_integer()

    case factorial(numero) do
      {:error, mensaje} ->
        IO.puts(mensaje)

      resultado ->
        IO.puts("El factorial de #{numero} es: #{resultado}")
    end
  end
end

Factorial.main()

