defmodule Sample.Enum do
    @doc """
        exemplo de definições de função em uma linha
    """
    def first(list, val \\ nil)
    def first([head | _], _), do: head
    def first([], val), do: val

    def add(list, val \\ 0) do
        trace(val)
        [val | list]
    end
    
    defp trace(string) do
        IO.puts("The value passed in was #{string}")    
    end

    def map([], _), do: []
    def map([head | tail], f), 
        do: [f.(head) | map(tail, f)]

    def length([]), do: 0
    def length([_ | tail]),
        do: 1 + length(tail)

    def other_length([_ | tail]),
        do: other_length(tail, 1)
    def other_length([], len),
        do: len
    def other_length([_ | tail], len),
        do: other_length(tail, len + 1)
end