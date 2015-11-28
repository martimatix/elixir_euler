# Inspiration from http://elixir-lang.org/getting-started/comprehensions.html
defmodule Triple do
  def pythagorean(n) when n > 0 do
    for a <- 1..n-2,
        b <- a+1..n-1,
        c <- b+1..n,
        a + b + c == 1000,
        a*a + b*b == c*c,
        do: {a, b, c}
  end
end

# Why 500? Try it and see if we get a match. Else try again with a larger value.
IO.puts Triple.pythagorean(500)
         |> List.first
         |> Tuple.to_list
         |> Enum.reduce(&*/2)

# This is a rather slow method because even when the triple is found,
# the program continues to run.
