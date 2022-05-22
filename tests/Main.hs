--
-- Quick test we can parse scip
--
module Main ( main ) where

import qualified Data.ProtoLens as Proto
import qualified Proto.Scip as Scip
import qualified Proto.Scip_Fields as Scip
import qualified Data.ByteString as B

main :: IO ()
main = do
    t <- B.readFile "tests/java/index.scip"
    case Proto.decodeMessage t :: Either String Scip.Index of
        Left err -> fail err
        Right v -> putStrLn $ Proto.showMessage v

    case Proto.decodeMessage t :: Either String Scip.Document of
        Left err -> fail err
        Right v -> putStrLn $ Proto.showMessage v

    case Proto.decodeMessage t :: Either String Scip.Symbol of
        Left err -> fail err
        Right v -> putStrLn $ Proto.showMessage v
