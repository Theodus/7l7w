{-
Write a list comprehension to build a childhood multiplication table. The table
would be a list of three-tuples where the first two are integers from 1–12 and
the third is the product of the first two.
-}
module Main where

multTable :: [Integer] -> [(Integer, Integer, Integer)]
multTable nums = [(a, b, a*b) | a <- nums, b <- nums]

main :: IO()
main = print (multTable [1..12])
