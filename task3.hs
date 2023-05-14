f :: Int -> Int -> Int
f x y = if x > 10 then x + a else x - a
  where
    a = (y + 1) * (y + 1)

main :: IO ()
main = do
  let result = f 5 10
  putStrLn ("Результат: " ++ show result)
  