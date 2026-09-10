# Material Selection Pack

Aplicativo desenvolvido em Flutter para seleção e gerenciamento de materiais e informações relacionadas a eventos.

## Resumo do Desenvolvimento

### 1) Qual o nome do componente Slider? Qual a variável responsável por armazenar o valor padrão do Slider?

O componente utilizado é o `Slider`. A variável responsável por armazenar o valor do Slider é `_valorSlider`.

### 2) Porque em um dos botões um está marcado como “OutlinedButton” e o outro como “ElevatedButton”? Qual a diferença visual entre eles? Possuem parâmetros diferentes? Quais?

O `OutlinedButton` possui uma borda ao redor e um fundo transparente. Já o `ElevatedButton` possui um fundo preenchido, dando uma aparência de botão elevado.

Eles possuem parâmetros diferentes. No `OutlinedButton`, são utilizados parâmetros como `foregroundColor` e `side`, que definem a cor do texto e da borda. No `ElevatedButton`, são utilizados `backgroundColor` e `foregroundColor`, que definem a cor do fundo e do texto.

### 3) Qual a finalidade do método setState() dentro do RadioGroup?

O método `setState()` serve para informar ao Flutter que o estado do componente foi alterado. Dentro do `RadioGroup`, ele atualiza a variável `_visibilidadeSelecionada` com a opção escolhida pelo usuário e faz a interface ser reconstruída para mostrar a nova seleção.

### 4) Explique para uma criança de 10 anos o que faz o método ".map" na lista de itens do dropdown.

O método `.map` pega cada item de uma lista e transforma esse item em outra coisa. É como se tivéssemos uma caixa com vários brinquedos e o `.map` pegasse cada brinquedo, um por um, e fizesse uma transformação nele. No dropdown, ele é usado para transformar cada item da lista em uma opção que poderá ser mostrada para o usuário.

### 5) Como é controlado as tags selecionadas do usuário do tipo Chip (FilterChip)?

As tags selecionadas são controladas por uma variável que armazena quais opções estão selecionadas. Quando o usuário clica em um `FilterChip`, o método `setState()` é utilizado para alterar o estado daquela tag. Assim, o Flutter atualiza a tela e mostra quais `FilterChip` estão selecionados.
