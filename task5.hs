f2 :: Int -> Int -> Int
f2 x y
  | x > 10    = x + a
  | otherwise = x - a
  where
    a = (y + 1) * (y + 1)
         
main :: IO ()
main = do
  let result = f2 5 10
  putStrLn ("Результат: " ++ show result)
  