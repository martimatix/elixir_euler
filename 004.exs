defmodule Palindromes do
  @range 100..999

  def perform do
    generate_products
      |> List.flatten
      |> Enum.filter(&(is_palindrome?(&1)))
      |> Enum.max
  end

  def generate_products do
    Enum.map(@range, fn(x) ->
      Enum.map(@range, fn(y) ->
        x * y
      end)
    end)
  end

  def is_palindrome?(n) do
    num_as_chars = Integer.to_string(n)
    String.reverse(num_as_chars) == num_as_chars
  end
end

IO.puts Palindromes.perform
