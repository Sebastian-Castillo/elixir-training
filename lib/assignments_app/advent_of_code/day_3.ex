defmodule SophosApp.AdventCode.Day3 do
  @rules fn
    "^" -> [0, 1]
    "v" -> [0, -1]
    ">" -> [1, 0]
    "<" -> [-1, 0]
  end

  defmodule Star1 do
    def evaluate_star_1(str) do
      str
      |> String.split("", trim: true)
      |> Enum.map(@rules)
      |> Enum.scan(fn [x, y], [x2, y2] -> [x + x2, y + y2] end)
      # initial position of the route
      |> Enum.concat([[0, 0]])
      |> Enum.uniq()
      |> Enum.count()

      # trying to use zip_with
      # str
      # |> String.split("", trim: true)
      # |> Enum.map(rules)
      # |> Enum.scan([0, 0], fn x, y ->
      #   &(Enum.zip_with(&1, &2, fn a, b -> a + b end) |> Enum.to_list())
      # end)
    end
  end

  defmodule Star1 do
    def evaluate_star_2(str) do
    end
  end
end
