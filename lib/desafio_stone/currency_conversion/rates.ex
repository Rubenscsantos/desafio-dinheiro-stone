defmodule DesafioStone.CurrencyConversion.Rates do

  alias DesafioStone.CurrencyConversion.Rates
  alias DesafioStone.Currency

  @type t :: %Rates{
    base: atom,
    rates: %{atom => float}
  }

    @doc """
    Módulo que define uma struct, responsável por armazenar todas as taxas de conversão(Com base no Real)
  ### Exemplo
      iex> %DesafioStone.CurrencyConversion.Rates{base: :BRL, rates: %{USD: 1.4205, EUR: 1.9558}}
      %DesafioStone.CurrencyConversion.Rates{base: :BRL, rates: %{USD: 1.4205, EUR: 1.9558}}
  """
  @enforce_keys [:base, :rates]
  defstruct [:base, :rates]

  @spec get_rate_to_convert(String.t | Currency.t) :: Float.t
  @doc """
  """
  def get_rate_to_convert(currency) when is_bitstring(currency) do
    {:ok, rates_to_convert} = DesafioStone.Source.RateSource.load
    inspect rates_to_convert
    Map.fetch!(rates_to_convert.rates, DesafioStone.CurrencyData.to_atom(currency))
  end

end