--El nombre de la función AllDiferent debería ser allDifferent (con "a" minúscula al principio), para que coincida con el nombre que utilizaste en la definición de la función y para seguir las convenciones de estilo de Haskell.
--Falta el tipo de la función allDifferent. Debes especificar el tipo de los argumentos y el tipo de retorno. En este caso, los argumentos son n, m y p, todos de tipo Int, y el tipo de retorno es Bool.
--El código en sí mismo parece correcto en cuanto a la lógica para verificar si los tres números son diferentes entre sí.
allDifferent :: Int -> Int -> Int -> Bool
allDifferent n m p = ((n /= m) && (m /= p))

--AllDiferent n m p = (( n /= m ) && ( m /= p))