module MeusTestes where

import MeusTestes
import Test.HUnit

additionTests :: Test
additionTests = TestList
  [ TestLabel "Adição simples" $ TestCase $ assertEqual 
      "2 + 3 deve ser igual a 5"
      5
      (addNumbers 2 3),
    TestLabel "Adição com zero" $ TestCase $ assertEqual
      "0 + 5 deve ser igual a 5" 
      5
      (addNumbers 0 5),
    TestLabel "Adição com números negativos" $ TestCase $ assertEqual
      "-2 + 3 deve ser igual a 1"
      1
      (addNumbers (-2) 3)
  ]

positivityTests :: Test 
positivityTests = TestList
  [ TestLabel "Número positivo" $ TestCase $ assertBool
      "4 deve ser positivo"
      (isPositive 4),
    TestLabel "Número zero" $ TestCase $ assertBool
      "0 não deve ser positivo"
      (not $ isPositive 0),
    TestLabel "Número negativo" $ TestCase $ assertBool
      "-5 não deve ser positivo"
      (not $ isPositive (-5))
  ]

messageTests :: Test
messageTests = TestList
  [ TestLabel "Mensagem de sucesso" $ TestCase $ assertString
      "Operação realizada com sucesso"
      "Operação realizada com sucesso",
    TestLabel "Mensagem de erro" $ TestCase $ assertString
      "Erro inesperado ocorreu"
      "Erro inesperado ocorreu"
  ]

assertFailureTest :: Test
assertFailureTest = TestLabel "Teste com assertFailure" $ TestCase $ do
  assertFailure "Este teste deve falhar"

customPutText :: Handle -> String -> Bool -> IO ()
customPutText h str atEnd = do
  IO.hPutStr h $ "[TEST] " ++ str
  if atEnd
    then IO.hPutStrLn h ""
    else IO.hFlush h

-- Execução dos testes
main :: IO ()
main = do
  runTestTT $ TestList [additionTests, positivityTests, messageTests]

  let totalTests = testCaseCount $ TestList [additionTests, positivityTests, messageTests, assertFailureTest]
  putStrLn $ "Número total de casos de teste: " ++ show totalTests

  testPaths <- testCasePaths $ TestList [additionTests, positivityTests, messageTests, assertFailureTest]
  putStrLn "Caminhos dos casos de teste:"
  mapM_ (\path -> putStrLn $ "  " ++ show path) testPaths

  putStrLn "Rodando testes usnado runTesTT:"
  runTestTT $ TestList [additionTests, positivityTests, messageTests]
  putStrLn "Todos os testes foram concluídos."

  putStrLn "Rodando testes com saída customizada:"
  let allTests = TestList [additionTests, positivityTests, messageTests, assertFailureTest]
  (counts, _) <- runTestText (putTextToHandle stderr customPutText) allTests

  putStrLn "Resumo dos testes:"
  putStrLn $ "Casos: " ++ showCounts counts
  putStrLn $ "Caminhos dos testes:"
  mapM_ (\p -> putStrLn $ "  " ++ showPath p) $ testCasePaths allTests