f1 :: Int -> Int -> Int
f1 x y = let a = (y + 1) * (y + 1)
         in if x > 10 then x + a else x - a
         
main :: IO ()
main = do
  let result = f1 5 10
  putStrLn ("Результат: " ++ show result)
  