defmodule DesafioStone.ClientDataReader do
  
  def is_client?([head|tail]) do
    #List.to_tuple(a)
    #IO.inspect(tail)
    IO.puts([head|tail])
    IO.puts(head)
    if head == "client" do 
      tail
    #else
      #List.delete([head|tail], [head|tail])
    end
    #|>IO.puts
    #|> String.split(",")
    #|> Enum.map(&String.trim/1)
    #|> Enum.map(&(&1 == ":client"))
    #|> Enum.map(fn x-> x = Atom.to_string(:client) end)
    #|> Enum.map(fn _ -> if List.first/1 == ":client" do List.first.to_atom() end end )
    #|> List.first
    #|> String.to_atom 
  end
  def make_lists(file) do
    file
    |> String.split(",")
    |> Enum.map(&String.trim/1)
  end

  def get_clients_from_file(file) do
    file
    |> String.split("\n")
    |> Enum.map(&String.trim/1)
    |> Enum.map(&make_lists/1)
    |> Enum.map(&is_client?/1)
    |> Enum.filter(& &1)
    #|> IO.inspect
    #|> IO.inspect
  end

  def read_file(path), do: File.read!(path) |> get_clients_from_file()



end