import Data.Time

timeConversion :: String -> String
timeConversion = format . parse
  where
    locale = defaultTimeLocale
    parse = parseTimeM True locale "%H:%M:%S%p" :: String -> Maybe TimeOfDay 
    format = maybe "" $ formatTime locale "%X"

main :: IO ()
main = interact $ timeConversion
