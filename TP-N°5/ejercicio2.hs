module Main where --Definimos un modulo main

losCuatrosIguales :: Int -> Int -> Int -> Int -> Bool --Definimo una funcion
losCuatrosIguales a b c d = a == b && b == c && c == d

main :: IO () --IO (), lo que significa que realiza acciones de entrada/salida (IO) y no devuelve ningún valor (()).
main = do --Entra a una secuencia 
    let a = 1
    let b = 1
    let c = 1
    let d = 1
    let resultado = losCuatrosIguales a b c d
    putStrLn $ "¿Los cuatro números son iguales? " ++ show resultado --imprime en consolaaaaa