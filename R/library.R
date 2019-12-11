library <- function (package1, help1, pos1 = 2, lib.loc1 = NULL, character.only1 = FALSE, logical.return1 = FALSE, warn.conflicts1 = TRUE, quietly1 = FALSE, 
          verbose1 = getOption("verbose")) {
  # append to requirements.txt
  fileConn <- file("requirements.txt")
  writeLines(deparse(substitute(package1)), fileConn)
  close(fileConn)
  
  # normal library()
  base::library(package = c(deparse(substitute(package1))), help = deparse(substitute(help1)), pos = deparse(substitute(pos1)), lib.loc = deparse(substitute(lib.loc1)), character.only = FALSE, 
                 logical.return = deparse(substitute(logical.return1)), warn.conflicts = deparse(substitute(warn.conflicts1)), quietly = deparse(substitute(quietly1)), 
                 verbose = verbose1)
}
