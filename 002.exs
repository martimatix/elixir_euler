defmodule Fibonacci do
  require Integer
  @limit 4_000_000

  def perform(n1, n2, even_fibonacci_terms) when n2 <= @limit do
    if Integer.is_even(n2) do
      even_fibonacci_terms = even_fibonacci_terms ++ [n2]
    end
    perform(n2, n1 + n2, even_fibonacci_terms)
  end

  def perform(n1, n2, even_fibonacci_terms) do
    Enum.sum(even_fibonacci_terms)
  end
end

IO.puts Fibonacci.perform(1, 2, [])

# I really like this solution https://github.com/chriskrycho/euler-elixir/blob/master/2.exs
