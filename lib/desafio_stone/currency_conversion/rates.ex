defmodule DesafioStone.CurrencyConversion.Rates do

  alias DesafioStone.CurrencyConversion.Rates, as: Rates

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
end