defmodule Potencia do
  @moduledoc """
  Módulo para calcular la potencia de un número (base^exponente) usando recursividad.
  """

  @doc """
  Calcula base^exponente recursivamente.

  - Caso base: cualquier número ^ 0 = 1
  - Caso recursivo: base^n = base * base^(n-1)

  Tipos de recursividad:
    - Directa: la función se llama a sí misma.
    - Lineal: solo hay una llamada recursiva en cada paso.
    - No de Cola: la multiplicación se hace después de la llamada recursiva.
  """
  def calcular(_, 0), do: 1  # caso base
  def calcular(base, exp), do: base * calcular(base, exp - 1) # recursivo

  @doc """
  Ejecuta un ejemplo con datos quemados.
  """
  def main do
    base = 3
    exponente = 5
    resultado = calcular(base, exponente)

    IO.puts("#{base} ^ #{exponente} = #{resultado}")
  end
end

Potencia.main()

