defmodule DesafioStone.CurrencyConversion do
  alias DesafioStone.CurrencyConversion.Rates
  alias DesafioStone.Currency
  alias DesafioStone.CurrencyData
  

  def convert_currency(%Currency{amount: amount_to_convert, currency: currency_to_convert, symbol: symbol_to_convert}, new_currency) when is_integer(amount_to_convert),
    do: %Currency{amount: (amount_to_convert * Rates.get_rate_to_convert(new_currency)), currency: CurrencyData.to_atom(new_currency), symbol: CurrencyData.get!(new_currency).symbol}
end