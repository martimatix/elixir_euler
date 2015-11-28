defmodule Eratosthenes do
  @limit 2_000_000
  @numbers 2..@limit
  @limit_sqrt :math.sqrt(@limit)

  def sieve, do: sieve(0, Enum.to_list(@numbers))

  def sieve(sum, [ head | tail ]) when head <= @limit_sqrt do
    sieve(sum + head, Enum.filter(tail, &(rem(&1, head) != 0 )))
  end

  def sieve(sum, remaining_numbers), do: sum + Enum.sum(remaining_numbers)
end

IO.puts Eratosthenes.sieve
