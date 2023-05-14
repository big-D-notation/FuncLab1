mymin :: Int -> Int -> Int
mymin x y | x <= y = x | otherwise = y

main :: IO ()
main = do
  let result = mymin 5 10
  putStrLn ("Мінімум: " ++ show result)
  