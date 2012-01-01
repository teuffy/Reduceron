module Loopy where
import Lava

loopy :: Bit -> Bit
loopy a = b where b = delay low (a <#> b)

main :: IO ()
main = do print $ simulateN 10 $ loopy high
          print $ simulateSeq loopy [low, high, low, high]
          writeC "Loopy"
                 (loopy (name "i"))
                 (name "o")
