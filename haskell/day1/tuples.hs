{-
Write a function that builds two-tuples with all possible combinations of
two of the colors black, white, blue, yellow, and red. Note that you should
include only one of (black, blue) and (blue, black).
-}
module Main where

colorList :: [String]
colorList = ["black", "white", "blue", "yellow", "red"]

colors :: [(String, String)]
colors = [(a, b) | a <- colorList, b <- colorList, a < b]

main :: IO()
main = print colors
