module Lib
    ( someFunc
    ) where

import qualified Data.ByteString.Lazy as BL

import Data.Csv hiding (decode, decodeWith, decodeByName, decodeByNameWith)
import Data.Csv.Parser.Megaparsec (decode, decodeWith, decodeByName, decodeByNameWith, Cec(..))
import Text.Megaparsec.Error (ParseError(..))
import Text.Megaparsec (parseErrorPretty)

import qualified Data.Vector as V

someFunc :: IO ()
someFunc = do
    csvData <- BL.readFile "data.csv"
    case decodeByName "" csvData :: Either (ParseError Char Cec) (Header, V.Vector NamedRecord) of
        Left err -> fail $ parseErrorPretty err
        Right v -> putStrLn $ show v
