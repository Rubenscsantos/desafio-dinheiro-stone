defmodule DesafioStone.CurrencyConversion.Rates do
  @moduledoc """
    Módulo que recebe e coloca os rates, recebidos do site http://fixer.io/, em uma struct para ser acessado por outras funções.
  """
  
  alias DesafioStone.CurrencyConversion.Rates
  alias DesafioStone.Currency
  alias DesafioStone.CurrencyData

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

  @spec get_rate_to_convert(Atom.t | Currency.t | String.t, Atom.t | Currency.t | String.t) :: Float.t
  @doc """
    Função que lida com a busca de moedas para conversão no módulo DesafioStone.Source.RateSource. Ela leva em conta a moeda original, para ser usada como base no api.fixer,
    e a moeda para conversão, para que possa receber o valor correto para converter.
  """
  def get_rate_to_convert(old_currency, new_currency) do
    [old_currency_exponent, new_currency_exponent] = [CurrencyData.get!(old_currency).exponent, CurrencyData.get!(new_currency).exponent]
    Agent.update(DesafioStone.Source.RateSource, fn x -> {old_currency, old_currency_exponent, new_currency_exponent} end)
    {:ok, rates_to_convert} = DesafioStone.Source.RateSource.load
    Map.fetch!(rates_to_convert.rates, DesafioStone.CurrencyData.to_atom(new_currency))
  end
end