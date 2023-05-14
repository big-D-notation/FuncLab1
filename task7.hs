later :: (Int, Int, Int) -> (Int, Int, Int) -> Bool
later (day1, month1, year1) (day2, month2, year2)
  | year1 > year2 = True
  | year1 == year2 && month1 > month2 = True
  | year1 == year2 && month1 == month2 && day1 > day2 = True
  | otherwise = False

main :: IO ()
main = do
  let date1 = (14, 5, 2023)
      date2 = (1, 1, 2023)
      result = later date1 date2
  putStrLn ("Is date1 later than date2? " ++ show result)
  