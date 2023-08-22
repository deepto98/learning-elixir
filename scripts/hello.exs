# All Elixir code has to be inside a module
# $ Convention : module name = file name
defmodule Hello do
  # def - keyword to define functions
  def world(name) do
    IO.puts("Hello  #{name}")

    # atom:
    :error
    {:error, reason} = {:error, "File not found"}
    IO.puts(reason)
    {:ok, msg} = {:ok, "Status 200"}
    IO.puts(msg)

    # STRINGS
    # Get details of var - type,size,etc
    IEx.Helpers.i(reason)

    # Concatenating strings
    "H" <> rest = "Hello"
    IO.puts(rest)

    #Check if var is string i.e binary
    IO.puts(is_binary(rest))

    # Concatenating from RHS
    new = "H" <> rest
    IO.puts(new)

    # Pattern matching with raw representation of string
    name = "hello"
    <<head, rest::binary>> = name
    IO.puts(head) #outputs 104 ie ascii/code point of H
    IO.puts(rest) # outputs ello

    #check code point/ascii
    IO.puts(?h)
    IO.puts(head == ?h)

    <<"he",rest::binary>> = name
    IO.puts(rest)

    <<h,e,l,rest::binary>> = name
    IO.puts(h)#104
    IO.puts(e)#101
    IO.puts(l)#108
    IO.puts(rest)

    # Collect first two digits
    <<head::binary-size(2),rest::binary>> = name
    IO.puts(head)
    IO.puts(rest)


    # CHARLIST
    c = 'abcd'
    IEx.Helpers.i(c) # Type is list [...]
    #Concatenating lists
    d =  c ++ 'efgh'
    IO.puts(d)
    #Check if list
    IO.puts(is_list(d))

    # PROCESS
    my_pid = self()
    IO.puts(inspect(my_pid))

    #LIST - linked list, not regular list
    list = ["a","b","C"]
    # list[0]#doesn't work
    IO.puts(Enum.at(list,0))
    #Pattern Matching with Lists
    [first,second,third] = list
    #Ignoring values
    [_,_,third] = list
    IO.puts(third)#C
    # Head of list
    IO.puts(hd(list))#a
    #tail - returns ALL values except head
    IO.puts(tl(list))#bC

    #Cons/Pipe Operator
    [h | t] = list #h - first, t - remaining
    IO.puts(h)#a

    # TUPLE
    {a,b} = {1,2}
    {:reply,msg,state} = {:reply, "Data found", ["123",234]}

    #Keyword List
    data = [a: 1,b: 2] # a is actually an atom, and
    #its stored as {:a,1}

    #we can verify that by trying to match
    [{:a,1}] = [a: 1]
    [{:a,1},{:b,2}] = data

    #Access key
    IO.puts(data[:a])#1

    #MAPS
    my_map = %{a: 1, b: 2, c: 3}
    #Reevaluate
    %{a: first, b: second, c: third} = my_map
    IO.puts(first)#can access value directly

    #Matching a single value
    %{ b: second_value} = my_map
    IO.puts(second_value)#can access value directly

    # if the key is of atom type, we can access the value with .
    IO.puts(my_map.b)

    #but if key is a string, we can't
    map2 = %{"a" => 1,"b" => 2}
    %{"a" => val_a} = map2
    IO.puts(val_a)
    # IO.puts(map2.a) #doesn't work

    #updating an atom key
    map2 = %{map2 | "b" => 4}
    IO.puts(inspect(map2))

    #updating a string key
    my_map = %{my_map | c: 20}
    IO.puts(inspect(my_map))

  end
end

# From module hello, we call world
Hello.world("abc")
