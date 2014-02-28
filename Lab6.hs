module Lab6 where

--Aleksandr Staprans
--Lab 6
--Feb 28, 2014

getLengths :: [[a]] -> [([a], Int)]
getLengths xs = [(x, (length x)) | x <- xs]

getLengths' :: [[a]] -> [([a], Int)]
getLengths' [] =[]
getLengths' (x:xs) = (x, (length x)) : getLengths' xs

inserts :: String -> [(String, String)] -> [String]
inserts str pairs = [x ++ str ++ z | (x,z) <- pairs, length (x) == length (z)]

inserts' :: String -> [(String, String)] -> [String]
inserts' [] [] = []
inserts' str [(x:xs), (y:ys)]
    | (length y) == (length x) = [x ++ str ++ y] : inserts' str [(xs,ys)]
    | otherwise = inserts' str [(x, ys)]
    

multPairSum :: [(Float, Float)] -> Float
multPairSum (x:xs:rest) = [[x+xs] | (x,xs) <- (x:xs:rest)] ++ multPairSum rest

