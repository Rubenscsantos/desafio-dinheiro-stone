defmodule DesafioStone do
  @moduledoc """
  Documentation for DesafioStone.
  """

  @doc """
  Hello world.

  ## Examples

      iex> DesafioStone.hello
      :world

  """
  def start,
    do: DesafioStone.Source.RateSource.start_link
end
