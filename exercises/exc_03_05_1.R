library(mgcv)
data(meuse, package="sp")
mod2da <- gam(cadmium ~ s(x, y) + s(dist) + s(elev),
              data = meuse, method = "REML")

# 3D surface plot
___(mod2da, ___, pages = 1)
