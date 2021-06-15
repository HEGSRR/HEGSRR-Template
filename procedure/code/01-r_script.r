# list of required packages
packages = c("here")

# load and install required packages
package.check <- lapply(
  packages,
  FUN = function(x) {
    if (!require(x, character.only = TRUE)) {
      install.packages(x, dependencies = TRUE)
      library(x, character.only = TRUE)
    }
  }
)

# save the R processing environment to r_environment.txt
writeLines(capture.output(sessionInfo()),here("procedure","environment","r_environment.txt"))
