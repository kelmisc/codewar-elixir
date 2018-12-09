defmodule Fp do
  def nb_dig(n,d) do
    nb_dig(0, n, 0, d)
  end

  def nb_dig(count, largestNum, current, digit) do
    cond do
      digit < 0 ->
        count
      largestNum < 0 ->
        count
      current > largestNum ->
        count
      true ->
        matched_count = current * current |> Integer.digits |> Enum.count(fn(x) -> digit == x end)
        nb_dig(matched_count + count, largestNum, current + 1, digit)
    end 
  end
end
