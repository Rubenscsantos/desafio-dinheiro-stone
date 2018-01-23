defmodule DesafioStone.Client do
  @type t :: %__MODULE__
  {
    name: String.t, cpf: %Cpf{number: String.t}, value_to_receive: Float.t
  }

  defstruct name: "", cpf: %Cpf{number: ""}, value_to_receive: 0.0
end