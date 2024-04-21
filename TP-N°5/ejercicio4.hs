module Main where --Definimos un modulo main
                  --where indica que es local

cuantosIguales :: Int -> Int -> Int -> Int
cuantosIguales a b c
    | a == b && b == c = 3
    | a == b || a == c || b == c = 2
    | otherwise = 0
cuantosIgualesDeDos :: Int -> Int -> Int
cuantosIgualesDeDos a b
    | a == b = 2
    | otherwise = 0 -- de lo contrario
 
main :: IO () --IO (), lo que significa que realiza acciones de entrada/salida (IO) y no devuelve ningún valor (()).
main = do --Entra a una secuencia 
    let a = 1
    let b = 1
    let c = 1
    let resultado = cuantosIguales a b c 
    putStrLn $ "La cantidad de numeros iguales es:" ++ show resultado --imprime en consola