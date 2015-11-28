defmodule Prime do
  @target 10_001

  def count_primes(_, list_of_primes) when length(list_of_primes) == @target do
    List.last(list_of_primes)
  end

  def count_primes(candidate, list_of_primes) do
    if Enum.all?(list_of_primes, fn(x) -> rem(candidate, x) > 0 end) do
      list_of_primes = list_of_primes ++ [candidate]
    end
    count_primes(candidate + 1, list_of_primes)
  end
end

IO.puts Prime.count_primes(3, [2])
