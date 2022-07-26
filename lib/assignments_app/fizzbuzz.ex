defmodule SophosApp.FizzBuzz do
  # Apply fizz_buzz
  def fizz_buzz(number),
    do: IO.inspect(Enum.map(1..number, fn n -> fizz_buzz(rem(n, 3), rem(n, 5), n) end))

  defp fizz_buzz(0, 0, _n), do: "FizzBuzz"
  defp fizz_buzz(0, _, _n), do: "Fizz"
  defp fizz_buzz(_, 0, _n), do: "Buzz"
  defp fizz_buzz(_, _, n), do: n
end
