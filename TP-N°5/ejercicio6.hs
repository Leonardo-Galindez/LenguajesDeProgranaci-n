module Main where
--CONSULTAR COMO ES es ghci
nAnd :: Bool -> Bool -> Bool
nAnd a b = not (a && b)

main :: IO ()
main = do
    let resultado = nAnd TRUE TRUE
    putStrLn $ "resultado:"++ show resultado