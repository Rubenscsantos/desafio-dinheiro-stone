defmodule DesafioStone.ClientTransactions do
  alias DesafioStone.Currency
  alias DesafioStone.Client
  @spec assessment(Currency.t | Float.t | Integer.t, Integer.t) :: List.t
  @doc """ 
  """
  def assessment(%Currency{amount: amount, currency: currency}, number_of_clients) when number_of_clients < 1 and amount !== 0.0 do
    #testa se o valor do rateio foi igual ao total.
    IO.puts "Valor incorreto para a quantidade de clientes"
    IO.puts amount
  end
  def assessment(%Currency{amount: amount, currency: currency}, number_of_clients) when number_of_clients < 1 do
    #testa se o valor do rateio foi igual ao total.
    IO.puts "Valor correto para a quantidade de clientes"
    IO.puts amount
  end
  def assessment(%Currency{amount: amount, currency: currency}, number_of_clients) do
    client_name = IO.gets "Digite o nome do Cliente a receber.\n"
    client_cpf = IO.gets "Digite o cpf do Cliente a receber.\n"
    client_cpf_to_validate = client_cpf |> String.trim("\n")
    client_cpf_validated =
      case Brcpfcnpj.cpf_valid?(%Cpf{number: client_cpf_to_validate}) do
        true ->
          client_cpf_to_validate
        false ->
          IO.puts "Por favor, tente novamente com um cpf valido"
          assessment(%Currency{amount: amount, currency: currency}, number_of_clients)
      end
    %Client{name: client_name, cpf: %Cpf{number: client_cpf_validated}}

    client_value_to_receive = IO.gets "Digite o quanto do valor total este cliente deve receber.\n"
    client_value_to_receive_float = client_value_to_receive |> String.trim("\n") |> String.to_float
    assessment(%Currency{amount: amount - client_value_to_receive_float, currency: currency}, number_of_clients - 1)
    #try do
    #  client_value_to_receive |> String.trim("\n"), fn(x) ->
    #  String.to_float(x)
    #end
    #catch
    #  x -> "#{x}.0" |> String.to_float
    #end
  end
end