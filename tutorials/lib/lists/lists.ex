defmodule Tutorials.Lists do 
# sum - recursive function to calculate sum of elements in linked list
    def sum([]), do: 0   
    def sum([h | t]) do
        h + sum(t)
    end
end 