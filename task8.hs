age :: (Int, Int, Int) -> (Int, Int, Int) -> Int
age (birthDay, birthMonth, birthYear) (currentDay, currentMonth, currentYear)
  | birthMonth < currentMonth || (birthMonth == currentMonth && birthDay <= currentDay) = currentYear - birthYear
  | otherwise = currentYear - birthYear - 1

main :: IO ()
main = do
  let birthDate = (2, 5, 1990)
      currentDate = (14, 5, 2023)
      result = age birthDate currentDate
  putStrLn ("The person's age is: " ++ show result)
