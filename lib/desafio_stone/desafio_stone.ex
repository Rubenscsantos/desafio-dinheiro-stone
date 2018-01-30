defmodule DesafioStone do
  @moduledoc """
    Este módulo contém somente a função start que tem como propósito iniciar todos os serviços que são necessários e não automáticos. Na versão atual do projeto só foi implementado
    um Agent.

    Para que o programa rode corretamente, principalmente a parte de conversão de moeda, é essencial que esta função seja chamada.
  """

  def start,
    do: DesafioStone.Source.RateSource.start_link
end
