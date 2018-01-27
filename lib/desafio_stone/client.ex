defmodule DesafioStone.Client do
  @moduledoc """
    Módulo criado para a funcionalidade de rateio.
  """
  @type t :: %__MODULE__
  {
    name: String.t, cpf: %Cpf{number: String.t}, value_to_receive: Integer.t
  }

  defstruct name: "", cpf: %Cpf{number: ""}, value_to_receive: 0.0
end