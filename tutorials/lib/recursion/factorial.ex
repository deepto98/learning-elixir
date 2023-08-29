defmodule Tutorials.Recursion.Factorial do
  # fact - recursive function to print factorial of  n
  def fact(0), do: 1
  def fact(1), do: 1
  def fact(n), do: n * fact(n - 1)

  # Using tail recursion
  # defintion
  def fact_tail(n, acc \\ 1)
  def fact_tail(1, acc), do: acc
  def fact_tail(n, acc), do: fact_tail(n - 1, acc * n)
end
