defmodule LargestPrime do
  def perform(n, largest_prime) do
    cond do
      rem(n, largest_prime) == 0 ->
        n = div(n, largest_prime)
        perform(n, largest_prime)
      n > 1 -> perform(n, largest_prime + 1)
      true -> largest_prime
    end
  end
end

IO.puts LargestPrime.perform(600851475143, 2)
