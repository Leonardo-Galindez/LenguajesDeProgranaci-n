module Main where

fibonacci :: Int -> Int
fibonacci n 
        | n == 1    = 0
        | n == 2    = 1
        | otherwise = fibonacci (n - 1) + fibonacci (n - 2)

factorial :: Int -> Int
factorial n 
        | n == 0    = 1
        | otherwise = factorial (n - 1) * n

funcion :: Int -> Int -> Double
funcion x n = sumatoria (n) / fromIntegral (factorial x)
        
sumatoria :: Int -> Double
sumatoria n = fromIntegral (sum [potencia num n | num <-[1..n]])

potencia :: Int -> Int -> Int
potencia num n = num ^ n

main :: IO ()
main = do

    putStrLn "Ingrese un numero:"
    indiceStr1 <- getLine
    let n = read indiceStr1 :: Int

    putStrLn "Ingrese un numero:"
    indiceStr2 <- getLine
    let x = read indiceStr2 :: Int

    let rtaFi = fibonacci n
    let rtaFa = factorial n
    let rtaF = funcion x n

    putStrLn $ "El resultado de fibonacci es:" ++ show rtaFi
    putStrLn $ "El resultado del Factorial es:" ++ show rtaFa
    putStrLn $ "EL resultado de la funcion es:" ++ show rtaF
    











{-module Main where

fibonacci :: Int -> Integer
fibonacci n
    | n == 1    = 0
    | n == 2    = 1
    | otherwise = fibonacciAux (n - 1) 0 1
    where
        fibonacciAux 0 a _ = a -- _ cuando no utilizamos el valor de a
        fibonacciAux n a b = fibonacciAux (n - 1) b (a + b)
factorial :: Integer -> Integer
factorial n
    | n < 0     = error "El factorial no está definido para números negativos."
    | n == 0    = 1
    | otherwise = n * factorial (n - 1)
potencia :: Integer -> Integer -> Integer
potencia _ 0 = 1
potencia base exp = base * potencia base (exp - 1)

sumaPotencias :: Integer -> Integer -> Integer
sumaPotencias n exponente = sum [potencia i exponente | i <- [1..n]]

f :: Integer -> Integer -> Double
f x n = fromIntegral (sumaPotencias n x) / fromIntegral (factorial x)

main :: IO ()
main = do
    putStrLn "Ingrese el índice del término de Fibonacci que desea calcular:"
    indiceStr <- getLine  -- getLine para obtenes por teclado
    let indice = read indiceStr :: Integer --guardar lo que ingreso por teclado
    let resultado = factorial indice
    putStrLn $ "El término de Fibonacci en el índice " ++ show indice ++ " es: " ++ show resultado-}
