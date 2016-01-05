points = seq(0, 1, length=20)
#create a grid
XY = expand.grid(X=points,Y=points)
# A z-function 
Zf <- function(p,q){
  (p*q+p*(1-q)*4+(1-p)*q*2+(1-p)*(1-q)*2)/(q+(1-q)*2)
}
# populate a surface
Z <- Zf(XY$X, XY$Y)
zlim <- range(Z)
zlen <- zlim[2] - zlim[1] + 1

jet.colors <-   # function from grDevices package
  colorRampPalette(c("#00007F", "blue", "#007FFF", "cyan",
                     "#7FFF7F", "yellow", "#FF7F00", "red", "#7F0000"))
colorzjet <- jet.colors(100)  # 100 separate color 
require(rgl)
open3d()
rgl.surface(x=points, y=matrix(Z,20), 
            coords=c(1,3,2),z=points, 
            color=colorzjet[ findInterval(Z, seq(min(Z), max(Z), length=100))] )
clear3d(type = "lights")
light3d(theta=35, phi=35)
axes3d()
rgl.snapshot("copyMatlabstyle.png")