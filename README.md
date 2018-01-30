# DesafioStone

  Projeto desenvolvido para ser capaz de realizar conversão de moedas e rateio de transações financeiras. Abaixo explicarei alguns aspectos importantes do funcionamento do programa.

  Tentei implementar o Docker ao final do projeto, mas apenas consegui fazer a build, não consegui rodar e nem finalizar.

# Como Funciona?

  A primeira coisa que acho importante ressaltar é como lidei com Currency. No início estava usando Float mas, com algumas pesquisas, percebi que é um tipo muito incerto de se utilizar. Decidi então tentar usar Integer e levar em conta o exponent da moeda sendo representada para contar as casas decimais, sendo assim, no meu módulo Currency, 10 reais seriam representados como 1000 mas a função to_string do módulo representaria corretamente como R$10,00.

  Com o módulo Currency funcionando do jeito descrito, surgiram alguns desafios para a conversão. Eu recebi as rates de conversão do site api.fixer.io, que me entrega valores em Float, então para a conversão em si utilizei este tipo. O desafio de utilizar Integer foi na conversão de moedas que tinham Exponents diferentes.

  No módulo de rateio ficaram algumas dúvidas sobre o intuito. No início imagei que seria algo parecido com um banco, que teria acesso às conta e saldo dos clientes e fiz um módulo que leria estes dados por fora do programa e faria uma base de clientes. Depois pensei mais em algo que a Stone utilizaria, pensei mais em um split real de transações que a Stone poderia estar pagando à múltiplos clientes, ou um rateio de custos interno da empresa. Então mudei o rumo, mas mantive o módulo antigo(ClientDataReader), pois aprendi muito fazendo ele.

  O módulo de rateio final são funções que recebem um valor total para o rateio e uma quantidade de indivíduos para receber. Esta função pede para que os dados dos clientes sejam digitados e, ao final do preenchimento dos dados e valores a receber de cada cliente, informa se o rateio foi bem sucedido ou não com uma mensagem.

# Como Usar

  O Projeto acabou ficando muito verboso, mas funcionando de acordo com o que queria. Utilizei um Agent no desenvolvimento dele, este Agent precisa ser inicializado para que a conversão de moedas funcione. Para isso é necessário, quando for usar este módulo, que digite a linha de código `DesafioStone.start`.

  Qualquer dúvida em funções e módulos, tentei ao máximo explicar com `@doc` o que cada um fazia e utilizar `@spec` para deixar claro as entradas e saídas.

