duplicar :: String -> Int -> String
duplicar cadena n
    |n == 0 = ""
    |n > 0 = cadena ++ " " ++ duplicar cadena (n-1)