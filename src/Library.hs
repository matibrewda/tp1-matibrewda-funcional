module Library where
import PdePreludat

doble :: Number -> Number
doble numero = numero + numero

cantEmpleados :: String -> Number
cantEmpleados nombre
    | nombre == "Acme" = 10
    | head nombre > last nombre = (length nombre)-2
    | esCapicua nombre && even (length nombre) = ((length nombre)-2)*2
    | mod (length nombre) 3 == 0 || mod (length nombre) 7 == 0 = 3

esCapicua :: String-> Bool
esCapicua nombre
    | nombre == reverse nombre = True
    | otherwise = False
