sumatoria :: Int -> Int -> Float
sumatoria k c

tParcial :: (Int,Int) -> Int -> String
tParcial (n,m) c
    | n == m && n>=1 && c>0 = show n ++ " " ++ show (sumatoria n c)
    | n < m  = show (sumatoria n c ) ++ "\n" ++ show (sumatoria (n+1,m) c)
|otherwise = "ERROR"

