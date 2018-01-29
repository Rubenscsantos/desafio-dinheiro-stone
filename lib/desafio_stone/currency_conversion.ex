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
    do: %Currency{amount: (round(amount_to_convert * Rates.get_rate_to_convert(currency, new_currency))), currency: CurrencyData.to_atom(new_currency), symbol: CurrencyData.get!(new_currency).symbol, exponent: CurrencyData.get!(new_currency).exponent}
end