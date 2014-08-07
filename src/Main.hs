module Main where
import System.Console.Haskeline

main :: IO ()
main = runInputT defaultSettings loop where
  loop :: InputT IO ()
  loop = do
    line <- getInputLine "=> "
    case line of
     Nothing -> return ()
     Just "(exit)" -> return ()
     Just "exit" -> return ()
     Just line -> do
       outputStrLn line
       loop
  
