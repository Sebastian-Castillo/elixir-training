defmodule SophosApp.AdventCode.Day3 do
  defmodule Star1 do
    def evaluate_star_1(str) do
      str
      |> String.split("", trim: true)
      |> Enum.map(&rules/1)
      |> Enum.scan(fn [x, y], [x2, y2] -> [x + x2, y + y2] end)
      # initial position of the route
      |> Enum.concat([[0, 0]])
      |> Enum.uniq()
      |> Enum.count()
    end

    def rules(rule) do
      %{
        "^" => [0, 1],
        "v" => [0, -1],
        ">" => [1, 0],
        "<" => [-1, 0]
      }[rule]
    end
  end

  defmodule Star2 do
    def evaluate_star_2(str) do
      str
      |> String.split("", trim: true)

      # [[],[]]
    end

    defp evaluate_route(route) do
      # route
      # |> Enum.map(&rule)
      # |> Enum.scan(fn [x, y], [x2, y2] -> [x + x2, y + y2] end)
      # # initial position of the route
      # |> Enum.concat([[0, 0]])
      # |> Enum.uniq()
      # |> Enum.count()
    end

    def rules(rule) do
      %{
        "^" => [0, 1],
        "v" => [0, -1],
        ">" => [1, 0],
        "<" => [-1, 0]
      }[rule]
    end
  end
end
