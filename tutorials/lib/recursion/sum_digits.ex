defmodule Tutorials.Recursion.SumDigits do
  # sumDigits - recursive function to print sum of all nos till  n

  def sumUpto(0), do: 0
  # Head Recursion - First recursive call,then statement
  def sumUpto(n) do
    n + sumUpto(n - 1) # return
    # IO.puts(n)
  end
end
