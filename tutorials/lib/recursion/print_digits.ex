defmodule Tutorials.Recursion.PrintDigits do
  # printDigits - recursive function to print all nos till  n 

  # base case
  #   def printDigits(0) do
  #     # return
  #     :ok
  #   end

  # Same base fn as single line definition

  def printDigitsHead(0), do: 0
  # Head Recursion - First recursive call,then statement
  def printDigitsHead(n) do
    printDigitsHead(n - 1)
    IO.puts(n)
  end

  def printDigitsTail(0), do: 0
  # Tail Recursion - First  statement, then recursive call
  def printDigitsTail(n) do
    IO.puts(n)
    printDigitsTail(n - 1)
  end

# sumOfDigits - Recursive fn to calculate sum of all nos till n


end
