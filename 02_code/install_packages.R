# code to install packages in the docker file
install.packages("tidyverse")
install.packages("lubridate")
install.packages("ReinforcementLearning")
install.packages("magrittr")
install.packages("plotly")
install.packages("openssl")
install.packages("rvest")
install.packages("qdap")
install.packages("stringr")
install.packages("twitteR")
install.packages("syuzhet")
install.packages("scales")
install.packages("reshape2")
install.packages("gapminder")
install.packages("plumber")
install.packages("lazytrade")

# The following two commands remove any previously installed H2O packages for R.
if ("package:h2o" %in% search()) { detach("package:h2o", unload=TRUE) }
if ("h2o" %in% rownames(installed.packages())) { remove.packages("h2o") }

# Next, we download packages that H2O depends on.
pkgs <- c("RCurl","jsonlite")
for (pkg in pkgs) {
if (! (pkg %in% rownames(installed.packages()))) { install.packages(pkg) }
}

# Now we download, install and initialize the H2O package for R.
install.packages("h2o", type="source", repos="http://h2o-release.s3.amazonaws.com/h2o/rel-yu/1/R")

