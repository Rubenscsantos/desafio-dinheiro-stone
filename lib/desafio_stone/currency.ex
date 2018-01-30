defmodule DesafioStone.Currency do
  @moduledoc """
    Módulo de base para o uso de moedas. Para tentar melhor a precisão de conversões feitas e outro módulo, a moeda é criada somente no tipo int, e evita ao máximo o uso de float.
    Deste modo, dependendo o exponent da moeda em questão, as casas decimais diferem. Isso é mais visível utilizando a função to_string presente neste módulo.
    ## Example:
      iex> currency_example1 = DesafioStone.Currency.new(1000,"cve")
        %DesafioStone.Currency{amount: 1000, currency: :CVE, exponent: 0, symbol: "$"}
      iex> DesafioStone.Currency.to_string(currency_example1)
        "$1000"
      iex> currency_example2 = DesafioStone.Currency.new(1000,"brl")
        %DesafioStone.Currency{amount: 1000, currency: :BRL, exponent: 2, symbol: "R$"}
      iex> DesafioStone.Currency.to_string(currency_example2)
        "$10.00"
  """
  @type t :: %__MODULE__
  {
    amount: Integer.t, currency: Atom.t, symbol: String.t, exponent: Integer.t
  }

  defstruct amount: 0, currency: :BRL, symbol: "R$", exponent: 2

  alias DesafioStone.CurrencyData
  alias DesafioStone.Currency

  @spec new(Integer.t | Float.t, Atom.t | String.t) :: Atom.t
  @doc """
    Retorna uma moeda, com as especificações preenchidas.

    ##Example:
      iex> DesafioStone.Currency.new(1000, "brl")
        %DesafioStone.Currency{amount: 1000, currency: :BRL, exponent: 2, symbol: "R$"}
      iex> DesafioStone.Currency.new(1000, :BRL)
        %DesafioStone.Currency{amount: 1000, currency: :BRL, exponent: 2, symbol: "R$"}
  """
  def new(amount, currency) when is_integer(amount),
    do: %Currency{amount: amount, currency: CurrencyData.to_atom(currency), symbol: CurrencyData.get!(currency).symbol, exponent: CurrencyData.get!(currency).exponent}
  def new(amount, currency) when is_float(amount),
    do: %Currency{amount: round(amount), currency: CurrencyData.to_atom(currency), symbol: CurrencyData.get!(currency).symbol, exponent: CurrencyData.get!(currency).exponent}

  @spec to_string(Currency.t) :: String.t
  @doc """
  Retorna uma string com o valor, acompanhado com o símbolo da moeda.
  ## Example:
      iex> DesafioStone.Currency.to_string(DesafioStone.Currency.new(10, "brl"))
      "R$ 0.10"
      iex> DesafioStone.Currency.to_string(DesafioStone.Currency.new(10, brl))
      ** (ArgumentError) currency WRONG doesn’t exist
  """
  def to_string(%Currency{amount: amount, currency: currency, symbol: symbol, exponent: exponent}) when is_integer(amount) do
    string_to_edit = Integer.to_string(amount)
    list_of_strings = String.split_at(string_to_edit, String.length(string_to_edit) - exponent) |> Tuple.to_list
    first_string = List.first(list_of_strings)
    last_string = List.last(list_of_strings)
    case {first_string, last_string, exponent} do
      {"", _, 0} ->
        "#{symbol}0"
      {_, "", 0} ->
        "#{symbol}#{first_string}"
      {_, _, 0} ->
        "#{symbol}#{first_string}"
      {"", "", _} ->
        "#{symbol}0.0"
      {"", _, _} ->
        "#{symbol}0.#{last_string}"
      {_, "", _} ->
        "#{symbol}#{first_string}.0"
      {_, _, _} ->
        "#{symbol}#{first_string}.#{last_string}"
    end
  end
end