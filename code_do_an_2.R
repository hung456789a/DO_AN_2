library(image.CornerDetectionF9)
imagelocation = "E:/DOAN2/FAST/thiet-ke-bia-sach-1.pgm"
image   <- read.pnm(file = imagelocation, cellres = 1)
x       <- image@grey * 255
corners <- image_detect_corners(x,12)
plot(image)
points(corners$x, corners$y, col = "green", pch = 20, lwd = 10)


//other code


library(magick)
library(image.CornerDetectionHarris)
path <- "E:/DOAN2/FAST/ghe.jpg"
img  <- image_read(path)
pts  <- image_harris(img)
pts

plt <- image_draw(img)
points(pts$x, pts$y, col = "red", pch = 20)
dev.off()
plt
