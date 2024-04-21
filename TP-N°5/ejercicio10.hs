cuartaPotencia :: Int -> Int
cuartaPotencia x = x * x * x * x

alCuadrado :: Int -> Int
alCuadrado x = x * x

cuartaPotenciaConAlCuadrado :: Int -> Int
cuartaPotenciaConAlCuadrado x = alCuadrado (alCuadrado x)