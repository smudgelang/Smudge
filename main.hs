module Main where

import Text.ParserCombinators.Parsec (parse, ParseError)
import System.Environment
import Grammar

result :: Either ParseError (String, [(State, Maybe String, [(Event, (Maybe [(Maybe String, Maybe (Maybe String, Event))], Maybe State))], Maybe String)]) -> IO()
result (Left err) = print err
result (Right s)  = print s

main = do
    args <- getArgs
    let fileName = head args
    compilationUnit <- readFile fileName
    result $ parse state_machine fileName compilationUnit
