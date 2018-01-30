defmodule DesafioStone.ClientDataReader do
  require Record
  Record.defrecord :client, name: nil, balance: nil

  @moduledoc """
    Módulo que Recebe um arquivo com informações variadas, lê e só retorna os clientes que estão nele. 

    Este módulo foi feito no início do Desafio, na versão final acabei não o utilizando, mas resolvi deixá-lo.
  """

  @doc """
    Grava os dados dos clientes com a função record.

    ## Fazer testes, ver se é a melhor opção para guardar informações e se é algo de fácil acesso.
  """
  def records_client_data(data) do
    record = client(name: List.first(data), balance: List.last(data) |> Float.parse)
  end

  @doc """
    Checa se a lista de dados é referente à um cliente e retorna, caso seja.
  """
  def is_client?([head|tail]) do
    if head == "client" do 
      records_client_data(tail)
      List.wrap(tail)
    end
  end

   @doc """
    Faz a divisão dos dados em listas, afim de unir os dados que se relacionam.
  """
  def make_lists(file) do
    file
    |> String.split(",")
    |> Enum.map(&String.trim/1)
  end

   @doc """
    Função principal que percorre toda a lista de dados lidos e, ao final, retorna uma lista de 
    dados de clientes.
  """
  def get_clients_from_file(file) do
    file
    |> String.split("\n")
    |> Enum.map(&String.trim/1)
    |> Enum.map(&make_lists/1)
    |> Enum.map(&is_client?/1)
    |> Enum.filter(& &1)
  end

  @doc """
    Função que lê um arquivo.
  """
  def read_file(path), do: File.read!(path) |> get_clients_from_file()
end