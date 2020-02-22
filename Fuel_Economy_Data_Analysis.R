library(tidyverse)
library(h2o)
h2o.init()

mpg <- as.h2o(mpg)
mpgglm <- h2o.glm(x = c("year","cyl","displ"),y = "cty",training_frame = mpg,family = "gaussian",lambda = 0,compute_p_values = T)

mpgglm@model$coefficients_table
#all input variables are significant predictors, beause p value is less than alpha(0.05) #year variable
#is not strong predictor, but displ and cyl variables are stronger than year variable according to coefficients

