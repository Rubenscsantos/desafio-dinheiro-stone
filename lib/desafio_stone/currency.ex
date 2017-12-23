defmodule DesafioStone.Currency do
  
  @type t :: %__MODULE__
  {
    amount: integer, currency: atom
  }

  defstruct amount: 0, currency: :BRL

end