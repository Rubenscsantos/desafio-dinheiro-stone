defmodule DesafioStone.Currency do
  
  @type t :: %__MODULE__
  {
    amount: integer, currency: atom, symbol: String.t
  }

  defstruct amount: 0, currency: :BRL, symbol: "R$"

  alias DesafioStone.CurrencyData
  alias DesafioStone.Currency

  def new(int, currency) when is_integer(int),
    do: %Currency{amount: int, currency: CurrencyData.to_atom(currency), symbol: CurrencyData.get!(currency).symbol}

  @spec to_string(Currency.t) :: String.t
  @doc """
  Retorna uma string com o valor, acompanhado com o símbolo da moeda.
  ## Example:
      iex> DesafioStone.Currency.to_string(DesafioStone.Currency.new(10, brl))
      "R$ 10"
      iex> DesafioStone.Currency.to_string(DesafioStone.Currency.new(10, brl))
      ** (ArgumentError) currency WRONG doesn’t exist
  """
  def to_string(%Currency{amount: amount, currency: currency, symbol: symbol}) when is_integer(amount),
    do: "#{symbol} #{amount}"
  def to_string(%Currency{amount: amount, currency: currency, symbol: symbol}) when is_float(amount),
    do: "#{symbol} #{amount}"


end