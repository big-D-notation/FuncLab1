import Data.Char (ord, chr)

hextonum :: Char -> Int
hextonum c
  | c >= '0' && c <= '9' = ord c - ord '0'
  | c >= 'a' && c <= 'f' = ord c - ord 'a' + 10
  | c >= 'A' && c <= 'F' = ord c - ord 'A' + 10
  | otherwise = error "Invalid hexadecimal character"

numtohex :: Int -> Char
numtohex n
  | n >= 0 && n <= 9 = chr (ord '0' + n)
  | n >= 10 && n <= 15 = chr (ord 'A' + n - 10)
  | otherwise = error "Invalid decimal number"

main :: IO ()
main = do
  let result = map (hextonum . numtohex) [0..15]
  putStrLn ("Results: " ++ show result)
  