module Main where

losCuatrosIguales :: Int -> Int -> Int -> Int -> Bool
losCuatrosIguales a b c d = a == b && b == c && c == d

main :: IO ()
main = do
    let a = 1
    let b = 1
    let c = 1
    let d = 1
    let resultado = losCuatrosIguales a b c d
    putStrLn $ "¿Los cuatro números son iguales? " ++ show resultado