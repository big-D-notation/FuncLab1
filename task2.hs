mymin1 :: Int -> Int -> Int
mymin1 x y = if x <= y then x else y

main :: IO ()
main = do
  let result = mymin1 5 10
  putStrLn ("Мінімум: " ++ show result)
  