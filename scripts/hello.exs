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
    <<had::binary-size(2),rest::binary>> = name
    IO.puts(head)
    IO.puts(rest)

  end
end

# From module hello, we call world
Hello.world("abc")
