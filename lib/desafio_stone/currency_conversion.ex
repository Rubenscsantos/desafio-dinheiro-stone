defmodule DesafioStone.CurrencyConversion do
  @moduledoc """
    Módulo para conversão de moedas. A função de conversão recebe uma moeda com valor a ser convertido e o nome ou atom da moeda para conversão.
  """

  alias DesafioStone.CurrencyConversion.Rates
  alias DesafioStone.Currency
  alias DesafioStone.CurrencyData
  
  @spec convert_currency(Currency.t, String.t | Atom.t) :: Currency.t
  @doc """
    Função que realiza a conversão de uma moeda para outra, utilizando os dados de conversão do módulo DesafioStone.CurrencyConversion.Rates.

    ##Example:
      iex> currency_to_convert = DesafioStone.Currency.new(1000, "brl")
      %DesafioStone.Currency{amount: 1000, currency: :BRL, exponent: 2, symbol: "R$"}
      iex> DesafioStone.CurrencyConversion.convert_currency(currency_to_convert, "usd")
      %DesafioStone.Currency{amount: 318, currency: :USD, exponent: 2, symbol: "$"}
  """
  def convert_currency(%Currency{amount: amount_to_convert, currency: currency}, new_currency) when is_integer(amount_to_convert),
    do: %Currency{amount: fixes_exponent_range(amount_to_convert * Rates.get_rate_to_convert(currency, CurrencyData.to_atom(new_currency))), currency: CurrencyData.to_atom(new_currency), symbol: CurrencyData.get!(new_currency).symbol, exponent: CurrencyData.get!(new_currency).exponent}

  
  @spec fixes_exponent_range(Float.t) :: Integer.t
  @doc """
    Função que recebe um valor float e resolve o problema de mudança de expoentes durante a conversão entre moedas.
  """
  def fixes_exponent_range(amount) do
    {_,old_exponent,new_exponent} = Agent.get(DesafioStone.Source.RateSource, fn x -> x end)
    cond do
      old_exponent > new_exponent ->
        remove_decimal_digits(round(amount),(old_exponent - new_exponent))
      old_exponent < new_exponent ->
        case old_exponent do
          0 -> 
            add_decimal_digits(:erlang.float_to_binary(amount, [decimals: new_exponent]), new_exponent)
          _ ->
            add_decimal_digits(:erlang.float_to_binary(amount, [decimals: (new_exponent - old_exponent)]), (new_exponent - old_exponent))
        end
      true ->
        round(amount)
    end
  end
  def remove_decimal_digits(amount, digits) do
    string_to_edit = Integer.to_string(amount)
    list_of_strings = String.split_at(string_to_edit, String.length(string_to_edit) - digits) |> Tuple.to_list
    [amount_to_return,_] = list_of_strings
    String.to_integer(amount_to_return)
  end
  def add_decimal_digits(amount, digits) do
    list_of_strings = String.split_at(amount, String.length(amount) - digits) |> Tuple.to_list
    [temp,decimals_to_add] = list_of_strings
    {clean_string,_} = String.split_at(temp, String.length(temp) - 1)
    string_to_return = "#{clean_string}#{decimals_to_add}"
    String.to_integer(string_to_return)
  end
end