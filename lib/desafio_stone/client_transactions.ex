defmodule DesafioStone.ClientTransactions do
  @moduledoc """
    Módulo que lida com o rateio de transações para múltiplos indivíduos. Retorna uma mensagem com detalhes sobre a transação caso ela seja bem sucedida.
  """
  alias DesafioStone.Currency
  alias DesafioStone.Client
  @spec assessment(Currency.t | Float.t | Integer.t, Integer.t, List.t) :: List.t
  @doc """ 
    Função que realiza o rateio de valores. Ela recebe iniciamente o valor a ser dividido e a quantidade de clientes que receberão este valor.
    Logo em seguida são solicitados e checados os dados dos clientes, um a um. Caso esteja tudo certo, será retornada uma mensagem de confirmação das transações, dando detalhes.
  """
  def assessment(%Currency{amount: amount, currency: currency}, number_of_clients, _) when number_of_clients < 1 and amount !== 0 do
    case amount do
      x when x > 0 ->
        "Sobraram #{Currency.to_string(%Currency{amount: amount, currency: currency})} para a transferência, tente novamente."
      _ -> 
        "Faltaram #{Currency.to_string(%Currency{amount: amount * -1, currency: currency})} para a transferência, tente novamente"
    end
  end
  def assessment(_,number_of_clients, list_of_clients) when number_of_clients < 1 do
    positive_transaction_response(list_of_clients)
  end
  def assessment(%Currency{amount: amount, currency: currency}, number_of_clients, list_of_clients \\ []) do
    client_name = IO.gets "Digite o nome do Cliente a receber.\n"
    client_cpf = IO.gets "Digite o cpf do Cliente a receber.\n"
    client_cpf_to_validate = client_cpf |> String.trim("\n")
    client_cpf_validated =
      case Brcpfcnpj.cpf_valid?(%Cpf{number: client_cpf_to_validate}) do
        true ->
          client_cpf_to_validate
        false ->
          IO.puts "Por favor, tente novamente com um cpf valido"
          assessment(%Currency{amount: amount, currency: currency}, number_of_clients, list_of_clients)
      end
    client_value_to_receive = IO.gets "Digite o quanto do valor total este cliente deve receber.\n"
    client_value_to_receive_clean = client_value_to_receive |> String.trim("\n") |> String.to_integer
    client = [%Client{name: client_name, cpf: %Cpf{number: client_cpf_validated}, value_to_receive: Currency.new(client_value_to_receive_clean, currency)}]
    assessment(%Currency{amount: (amount - client_value_to_receive_clean), currency: currency}, number_of_clients - 1, list_of_clients ++ client)
  end

  @doc """
    Função responsável pela mensagem de Transação bem sucedida.
  """
  def positive_transaction_response(list) when list !== [] do
    [head|tail] = list
    IO.puts "Cliente #{String.trim(head.name,"\n")}, de cpf #{Brcpfcnpj.cpf_format(head.cpf)} receberá #{Currency.to_string(head.value_to_receive)}"
    positive_transaction_response(tail)
  end
  def positive_transaction_response(_),
    do: IO.puts "Transação bem sucedida!"
end