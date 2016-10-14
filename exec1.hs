-- exec1.hs
toDigitsRev :: Integer -> [Integer]
toDigitsRev n
    | n <= 0          = []
    | (div n 10) == 0 = (mod n 10):[]
    | otherwise       = (mod n 10):toDigitsRev (div n 10)

toDigits :: Integer -> [Integer]
toDigits n = reverse (toDigitsRev n)

doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther [] = []
doubleEveryOther [x] = [x]
doubleEveryOther xs = doubleEveryOther (init xs') ++ [2 * last xs'] ++ [last xs]
    where xs' = init xs

sumDigits :: [Integer] -> Integer
sumDigits xs = sum (map sum (map toDigits xs))

validate :: Integer -> Bool
validate n
  | mod (sumDigits (doubleEveryOther (toDigits n))) 10 == 0 = True
  | otherwise                                               = False
