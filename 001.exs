divisible_by_three_or_five? = &(rem(&1, 3) == 0 or rem(&1, 5) == 0 )
IO.puts 1..(1000 - 1) |> Enum.filter(divisible_by_three_or_five?) |> Enum.sum
