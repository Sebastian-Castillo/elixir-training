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
    import Integer

    def evaluate_star_2(str) do
      str
      |> String.split("", trim: true)
      |> add_rule_robot_santa([[], []], 1)
      |> Enum.map(fn x ->
        ([[0, 0]] ++ x)
        |> Enum.scan(fn [x, y], [x2, y2] -> [x + x2, y + y2] end)
      end)
      |> Enum.concat()
      |> Enum.uniq()
      |> Enum.count()
    end

    defp add_rule_robot_santa([h | t], [x, y], index) when is_even(index) do
      add_rule_robot_santa(t, [x ++ [rules(h)], y], index + 1)
    end

    defp add_rule_robot_santa([h | t], [x, y], index) when is_odd(index) do
      add_rule_robot_santa(t, [x, y ++ [rules(h)]], index + 1)
    end

    defp add_rule_robot_santa(arr, list, index), do: list

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
