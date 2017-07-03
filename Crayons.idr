module Crayon

%access public export

data Crayon
  = FgBlack | FgRed | FgGreen | FgYellow | FgBlue | FgMagenta | FgCyan | FgWhite
  | BgBlack | BgRed | BgGreen | BgYellow | BgBlue | BgMagenta | BgCyan | BgWhite
  | Reset | Bright | Dim | Underscore | Blink | Reverse | Hidden


--------------------------------------------------------------------------------
-- Implementations
--------------------------------------------------------------------------------

Cast Crayon Nat where
  cast Reset      = 0
  cast Bright     = 1
  cast Dim        = 2
  cast Underscore = 4
  cast Blink      = 5
  cast Reverse    = 7
  cast Hidden     = 8
  cast FgBlack    = 30
  cast FgRed      = 31
  cast FgGreen    = 32
  cast FgYellow   = 33
  cast FgBlue     = 34
  cast FgMagenta  = 35
  cast FgCyan     = 36
  cast FgWhite    = 37
  cast BgBlack    = 40
  cast BgRed      = 41
  cast BgGreen    = 42
  cast BgYellow   = 43
  cast BgBlue     = 44
  cast BgMagenta  = 45
  cast BgCyan     = 46
  cast BgWhite    = 47

Show Crayon where
  show x = "\x1b[" <+> show (the Nat (cast x)) <+> "m"


--------------------------------------------------------------------------------
-- Helpers
--------------------------------------------------------------------------------

colorize : Crayon -> String -> String
colorize crayon string = (show crayon) <+> string <+> (show Reset)


bright : String -> String
bright = colorize Bright

dim : String -> String
dim = colorize Dim

underscore : String -> String
underscore = colorize Underscore

blink : String -> String
blink = colorize Blink


black : String -> String
black = colorize FgBlack

red : String -> String
red = colorize FgRed

green : String -> String
green = colorize FgGreen

yellow : String -> String
yellow = colorize FgYellow

blue : String -> String
blue = colorize FgBlue

magenta : String -> String
magenta = colorize FgMagenta

cyan : String -> String
cyan = colorize FgCyan

white : String -> String
white = colorize FgWhite


bgBlack : String -> String
bgBlack = colorize BgBlack

bgRed : String -> String
bgRed = colorize BgRed

bgGreen : String -> String
bgGreen = colorize BgGreen

bgYellow : String -> String
bgYellow = colorize BgYellow

bgBlue : String -> String
bgBlue = colorize BgBlue

bgMagenta : String -> String
bgMagenta = colorize BgMagenta

bgCyan : String -> String
bgCyan = colorize BgCyan

bgWhite : String -> String
bgWhite = colorize BgWhite

{-
code : Crayon -> String
code (Foreground FgBlack) = "\x1b[" <+> (show . cast $ FgBlack) <+> "m"
code (Foreground FgRed) = ?code_rhs_5
code _ = ""
-}

{-
code : Color -> Nat
code NoColor = 0
code White = 37
code Black = 30
-}

{-
Reset = "\x1b[0m"
Bright = "\x1b[1m"
Dim = "\x1b[2m"
Underscore = "\x1b[4m"
Blink = "\x1b[5m"
Reverse = "\x1b[7m"
Hidden = "\x1b[8m"

FgBlack = "\x1b[30m"
FgRed = "\x1b[31m"
FgGreen = "\x1b[32m"
FgYellow = "\x1b[33m"
FgBlue = "\x1b[34m"
FgMagenta = "\x1b[35m"
FgCyan = "\x1b[36m"
FgWhite = "\x1b[37m"

BgBlack = "\x1b[40m"
BgRed = "\x1b[41m"
BgGreen = "\x1b[42m"
BgYellow = "\x1b[43m"
BgBlue = "\x1b[44m"
BgMagenta = "\x1b[45m"
BgCyan = "\x1b[46m"
BgWhite = "\x1b[47m"
               -}
