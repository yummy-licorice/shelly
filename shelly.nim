import 
  functions,
  strformat

export
  functions

when isMainModule:
  let
    sep = returnCondition(ok = foreground(">>", green), ng = foreground(">>", red))
    nl = "\n"
    gitBranch = color(gitBranch(), magenta)
    cwd = italics color(tilde(getCwd()), blue)
    dirty = color("×", magenta)
    clean = color("•", magenta)
    space = " "
    #sep = ">>"
  let git = gitBranch & gitStatus(dirty, clean)     
  if git != "":
    # the prompt
    echo fmt"{nl}{sep}{space}{virtualenv()}{cwd}{sep}{space}{git}{space}{sep}{space}"
  else:
    echo fmt"{nl}{sep}{space}{virtualenv()}{cwd}{sep}{space}"
