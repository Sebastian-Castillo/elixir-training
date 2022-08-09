defmodule SophosApp.AdventCode.Day2 do
  defmodule Star1 do
    def evaluate_star_1(str) do
      str
      |> String.split(~r/\s+/)
      |> Enum.map(fn x ->
        String.split(x, "x", trim: true)
        |> Enum.map(&String.to_integer/1)
        |> calc_dimensions()
        |> Enum.sum()
      end)
      |> Enum.sum()
    end

    def calc_dimensions([l, w, h]) do
      [l * w, w * h, h * l]
      |> Enum.map(fn e -> e * 2 end)
      |> Enum.concat([Enum.min([l * w, w * h, h * l])])
    end
  end

  defmodule Star2 do
    def evaluate_star_2(str) do
      str
      |> String.split(~r/\s+/)
      |> Enum.map(fn x ->
        String.split(x, "x", trim: true)
        |> Enum.map(&String.to_integer/1)
        |> calc_dimensions()
        |> Enum.sum()
      end)
      |> Enum.sum()
    end

    defp calc_dimensions([l, w, h]) do
      [l + l + w + w, l * w * h]
    end
  end
end
