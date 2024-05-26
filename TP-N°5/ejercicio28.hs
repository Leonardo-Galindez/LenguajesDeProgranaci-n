cuadradosPerfectos :: (Int, Int) -> String
cuadradosPerfectos (x, y) = cuadradosPerfectosAux (x, y, 1)
    where
        cuadradosPerfectosAux :: (Int, Int, Int) -> String
        cuadradosPerfectosAux (x, y, z)
            | x > y = ""
            | n * n == x = show x ++ " " ++ show z ++ "\n" ++ cuadradosPerfectosAux (x + 1, y, z + 1)
            | otherwise = cuadradosPerfectosAux (x + 1, y, z + 1)
            where
                 n = round (sqrt (fromIntegral x))


main :: IO ()
main = do
   putStrLn $ cuadradosPerfectos (2, 18)