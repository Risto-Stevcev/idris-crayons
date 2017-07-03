module Test.Crayons

import Crayons

%access export

main : IO ()
main = do
  putStrLn $ bright "bright" <+> dim "dim" <+> underscore "underscore" <+> blink "blink"
  putStrLn $ black "black" <+> red "red" <+> green "green" <+> yellow "yellow" <+> blue "blue" <+>
             magenta "magenta" <+> cyan "cyan" <+> white "white"
  putStrLn $ bgBlack "black" <+> bgRed "red" <+> bgGreen "green" <+> bgYellow "yellow" <+> bgBlue "blue" <+>
             bgMagenta "magenta" <+> bgCyan "cyan" <+> bgWhite "white"
