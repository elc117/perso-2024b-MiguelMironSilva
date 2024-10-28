# HUnit Test Suite Example

### Nome: Miguel Miron Silva
### Curso: Ciência da Computação

## Proposta do projeto

Este projeto demonstra o uso avançado da biblioteca HUnit para testes em Haskell.

## Funcionalidades

- Testes utilizando `assertEqual`, `assertBool` e `assertString`
- Teste com `assertFailure` para forçar a falha
- Contagem total de casos de teste usando `testCaseCount`
- Obtenção dos caminhos de cada caso de teste usando `testCasePaths`
- Execução de testes com saída customizada usando `runTestText` e `putTextToHandle`
- Exibição de resumo dos testes com `showCounts` e `showPath`

## Estrutura do Projeto

O projeto contém os seguintes módulos:

1. **Main**: Ponto de entrada do programa, executa todos os testes e exibe o resultado.
2. **AdditionTests**: Testes para a função `addNumbers`.
3. **PositivityTests**: Testes para a função `isPositive`.
4. **MessageTests**: Testes para verificar mensagens de sucesso e erro.
5. **AssertFailureTest**: Teste que é projetado para falhar.

## Como Executar

1. Certifique-se de ter o compilador de Haskell (GHC) instalado.
2. Clone este repositório.
3. Navegue até o diretório do projeto.
4. Compile o código usando o seguinte comando:
5.# HUnit Test Suite Example

Este projeto demonstra o uso avançado da biblioteca HUnit para testes em Haskell.

## Funcionalidades

- Testes utilizando `assertEqual`, `assertBool` e `assertString`
- Teste com `assertFailure` para forçar a falha
- Contagem total de casos de teste usando `testCaseCount`
- Obtenção dos caminhos de cada caso de teste usando `testCasePaths`
- Execução de testes com saída customizada usando `runTestText` e `putTextToHandle`
- Exibição de resumo dos testes com `showCounts` e `showPath`

## Estrutura do Projeto

O projeto contém os seguintes módulos:

1. **Main**: Ponto de entrada do programa, executa todos os testes e exibe o resultado.
2. **AdditionTests**: Testes para a função `addNumbers`.
3. **PositivityTests**: Testes para a função `isPositive`.
4. **MessageTests**: Testes para verificar mensagens de sucesso e erro.
5. **AssertFailureTest**: Teste que é projetado para falhar.

## Como Executar

1. Certifique-se de ter o compilador de Haskell (GHC) instalado.
2. Clone este repositório.
3. Navegue até o diretório do projeto.
4. Compile o código usando o seguinte comando:
5. ghc Main.hs
6. Execute o código com o seguinte comando:
7. ./Main

## Referências

1. https://github.com/hspec/HUnit
2. https://hackage.haskell.org/package/HUnit-1.6.2.0
3. https://haskubuntu.com
