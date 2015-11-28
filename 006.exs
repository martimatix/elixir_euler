defmodule Math do
  def sum_of_squares do
    Enum.map(1..100, &(&1 * &1))
      |> Enum.reduce(&+/2)
  end

  def square_of_sums do
    sum = Enum.reduce(1..100, &+/2)
    sum * sum
  end
end

IO.puts Math.square_of_sums - Math.sum_of_squares
