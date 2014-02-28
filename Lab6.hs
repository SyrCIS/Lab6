module Lab6 where

--Aleksandr Staprans
--Lab 6
--Feb 28, 2014


--1-------------------------------------------------------
--CONTRACT
getLengths :: [[a]] -> [([a], Int)]

--PURPOSE
  -- To pair x with the length of x. 
  
--DEFINITION
getLengths xs = [(x, (length x)) | x <- xs]


--TEST
ans1 = getLengths ["one","two","three"]

--2----------------------------------------------------
--Contract
getLengths' :: [[a]] -> [([a], Int)]

--PURPOSE
  --Same as above just using explicit recursion 
  
--DEFINITION
getLengths' [] =[]
getLengths' (x:xs) = (x, (length x)) : getLengths' xs

--TEST
ans2 = getLengths' ["one","two","three"]

--3-----------------------------------------------------
--CONTRACT
inserts :: String -> [(String, String)] -> [String]

--PURPOSE
  --To insert a string between two strings of equivelent length
  
--DEFINITION  
inserts str pairs = [x ++ str ++ z | (x,z) <- pairs, length (x) == length (z)]

--TEST
ans3 = inserts "at" [("sc","tr"),("",""),("c",""),("l","t")]

--4----------------------------------------------------
--CONTRACT
inserts' :: String -> [(String, String)] -> [String]

--PURPOSE
  -- Same as above but using explicit recursion
  
--DEFINITION  
inserts' _ [] = []
inserts' str ((x, y):rest)
    | (length y) == (length x) = (x ++ (str ++ y)) : inserts' str rest
    | otherwise = inserts' str rest
    
--TEST
ans4 = inserts' "at" [("sc","tr"),("",""),("c",""),("l","t")]

  
-- 5----------------------------------------------
-- CONTRACT
multPairSum :: [(Float, Float)] -> Float

-- PURPOSE
  -- To sum up the numbers and then multiply them together
  
-- DEFINITION
multPairSum [] = 1
multPairSum ((x,y):rest) = (x+y)*(multPairSum rest )

-- TEST
ans5 = multPairSum [(3,4),(10,12),(100,2)]
