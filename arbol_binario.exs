defmodule Arbol do
  defmodule Nodo do
    defstruct valor: nil, izq: nil, der: nil
  end

  @moduledoc """
  Buscar rutas en un árbol binario cuya suma de valores sea igual a un objetivo.
  """

  @doc """
  Devuelve todas las rutas desde la raíz hasta hojas que sumen el objetivo.

  ## Definición:
    - Caso base: si el nodo es `nil`, no hay rutas → []
    - Caso recursivo:
        * Restar el valor del nodo al objetivo.
        * Si es hoja y el objetivo restante es 0 → ruta encontrada.
        * Si no, buscar recursivamente en izquierda y derecha.
  """
  def rutas(nil, _objetivo), do: []

  def rutas(%Nodo{valor: v, izq: nil, der: nil}, objetivo) do
    if v == objetivo do
      [[v]]  # ruta encontrada
    else
      []
    end
  end

  # Caso recursivo
  # - Recursividad Directa: la función se llama a sí misma.
  # - Recursividad Múltiple: cada llamada genera 2 llamadas (izquierda y derecha).
  # - Recursividad No de Cola: tras las llamadas, se procesan resultados (for, concatenación).
  def rutas(%Nodo{valor: v, izq: izq, der: der}, objetivo) do
    resto = objetivo - v
    rutas_izq = for camino <- rutas(izq, resto), do: [v | camino]
    rutas_der = for camino <- rutas(der, resto), do: [v | camino]
    rutas_izq ++ rutas_der
  end

  @doc """
  Ejecuta un ejemplo con un árbol quemado.
  """
  def run do
    # Árbol de ejemplo:
    #       5
    #      / \
    #     4   8
    #    /   / \
    #   11  13  4
    #  /  \      \
    # 7    2      1

    arbol = %Nodo{
      valor: 5,
      izq: %Nodo{
        valor: 4,
        izq: %Nodo{
          valor: 11,
          izq: %Nodo{valor: 7},
          der: %Nodo{valor: 2}
        }
      },
      der: %Nodo{
        valor: 8,
        izq: %Nodo{valor: 13},
        der: %Nodo{
          valor: 4,
          der: %Nodo{valor: 1}
        }
      }
    }

    objetivo = 22
    IO.puts("Rutas con suma #{objetivo}:")
    IO.inspect(rutas(arbol, objetivo))
  end
end

Arbol.run()
