defmodule Sample.Utils do
    def square(a), do: a * a

    def sum(a,b), do: a + b

    @doc""""
        O "." usando entre os parâmetros "f" e "a" na 
        função abaixo é necessário para a função 
        não dar erro com funções anônimas.
    """
    def custom_function(a,f) do
        f.(a)
    end
    
end