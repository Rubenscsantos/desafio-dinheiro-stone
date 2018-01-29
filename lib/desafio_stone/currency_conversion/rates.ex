defmodule DesafioStone.CurrencyConversion.Rates do
  @moduledoc """
    Módulo que recebe e coloca os rates, recebidos do site http://fixer.io/, em uma struct para ser acessado por outras funções.
  """
  alias DesafioStone.CurrencyConversion.Rates
  alias DesafioStone.Currency

  @type t :: %Rates{
    base: atom,
    rates: %{atom => float}
  }

    @doc """
    Módulo que define uma struct, responsável por armazenar todas as taxas de conversão(Com base no Real)
    ## Exemplo
      iex> %DesafioStone.CurrencyConversion.Rates{base: :BRL, rates: %{USD: 1.4205, EUR: 1.9558}}
      %DesafioStone.CurrencyConversion.Rates{base: :BRL, rates: %{USD: 1.4205, EUR: 1.9558}}
  """
  @enforce_keys [:base, :rates]
  defstruct [:base, :rates]

  @spec get_rate_to_convert(String.t | Currency.t, String.t | Currency.t) :: Float.t
  @doc """
  """
  def get_rate_to_convert(old_currency, new_currency) when is_bitstring(new_currency) do
    Agent.update(DesafioStone.Source.RateSource, fn x -> old_currency end)
    {:ok, rates_to_convert} = DesafioStone.Source.RateSource.load
    Map.fetch!(rates_to_convert.rates, DesafioStone.CurrencyData.to_atom(new_currency))
  end

  def teste,
    do: Agent.get(DesafioStone.Source.RateSource, fn x -> x end)

end